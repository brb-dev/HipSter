import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hipstermeet/infrastructure/core/notification/notification_service.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

part 'call_bloc.freezed.dart';
part 'call_event.dart';
part 'call_state.dart';

class CallBloc extends Bloc<CallEvent, CallState> {
  final RtcEngine engine;
  final NotificationService notificationService;

  late final RtcEngineEventHandler myHandler;

  CallBloc({required this.engine, required this.notificationService})
    : super(CallState.initial()) {
    on<CallEvent>(_onEvent);
  }

  void setupHandler() {
    myHandler = RtcEngineEventHandler(
      onJoinChannelSuccess: (RtcConnection connection, int elapsed) async {
        add(CallEvent.setLocalUID(localUid: connection.localUid ?? 0));
        add(CallEvent.setCallStatus(status: CallStatus.inCall));
        await WakelockPlus.enable();
      },
      onError: (err, msg) {
        add(
          CallEvent.setCallStatus(
            status: CallStatus.error,
            message: "$msg ($err)",
          ),
        );
      },
      onPermissionError: (permissionType) {
        add(
          CallEvent.setCallStatus(
            status: CallStatus.permissionDenied,
            message: "$permissionType denied",
          ),
        );
      },
      onUserJoined: (connection, remoteUid, elapsed) {
        add(CallEvent.setRemoteUid(remoteUid: remoteUid));
        add(const CallEvent.setCallStatus(status: CallStatus.inCall));
        notificationService.showMockPushNotification(connection.localUid ?? 0);
      },
      onLeaveChannel: (connection, stats) {
        add(CallEvent.setRemoteUid(remoteUid: null));
        add(CallEvent.setCallStatus(status: CallStatus.ended));
      },
      onUserOffline: (connection, remoteUid, reason) {
        add(CallEvent.setRemoteUid(remoteUid: null));
        add(const CallEvent.setCallStatus(status: CallStatus.ended));
      },
      onNetworkQuality: (connection, remoteUid, txQuality, rxQuality) {
        final quality = (txQuality.value() > rxQuality.value())
            ? txQuality.value()
            : rxQuality.value();
        add(CallEvent.setNetworkQuality(quality: quality));
      },
      onRemoteVideoStateChanged:
          (connection, remoteUid, state, reason, elapsed) {
            if (state == RemoteVideoState.remoteVideoStateStopped) {
              add(const CallEvent.setRemoteVideoEnabled(enabled: false));
            } else if (state == RemoteVideoState.remoteVideoStateDecoding) {
              add(const CallEvent.setRemoteVideoEnabled(enabled: true));
            }
          },
      onRemoteAudioStateChanged:
          (connection, remoteUid, state, reason, elapsed) {
            if (state == RemoteAudioState.remoteAudioStateStopped) {
              add(const CallEvent.setRemoteAudioEnabled(enabled: false));
            } else if (state == RemoteAudioState.remoteAudioStateDecoding) {
              add(const CallEvent.setRemoteAudioEnabled(enabled: true));
            }
          },
    );

    engine.registerEventHandler(myHandler);
  }

  Future<void> _onEvent(CallEvent event, Emitter<CallState> emit) async {
    switch (event) {
      case _Initialized():
        emit(CallState.initial());
        break;
      case _SetLocalUID():
        emit(state.copyWith(localUid: event.localUid));
        break;
      case _SetRemoteUid():
        emit(state.copyWith(remoteUid: event.remoteUid));
        break;
      case _SetCallStatus():
        emit(
          state.copyWith(
            callStatus: event.status,
            statusMessage: event.message,
          ),
        );
        break;
      case _SetNetworkQuality():
        emit(state.copyWith(networkQuality: event.quality));
        break;
      case _SetRemoteVideoEnabled():
        emit(state.copyWith(remoteVideoEnabled: event.enabled));
        break;

      case _SetRemoteAudioEnabled():
        emit(state.copyWith(remoteAudioEnabled: event.enabled));
        break;
      case _JoinMeeting():
        emit(state.copyWith(callStatus: CallStatus.connecting));
        setupHandler();
        await engine.joinChannel(
          token: "",
          channelId: event.meetingId,
          uid: 0,
          options: const ChannelMediaOptions(),
        );
        break;
      case _ToggleMute():
        final muted = !state.isMuted;
        await engine.muteLocalAudioStream(muted);
        emit(state.copyWith(isMuted: muted));
        break;
      case _ToggleVideo():
        final disabled = !state.isVideoDisabled;
        await engine.muteLocalVideoStream(disabled);
        emit(state.copyWith(isVideoDisabled: disabled));
        break;
      case _LeaveMeeting():
        await engine.leaveChannel();
        await engine.stopPreview();
        engine.unregisterEventHandler(myHandler);
        await engine.release();
        emit(CallState.initial());
        break;
      case _StartScreenShare():
        // implement later (placeholder)
        break;

      case _StopScreenShare():
        // implement later (placeholder)
        break;
    }
  }
}
