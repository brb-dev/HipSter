part of 'call_bloc.dart';

@freezed
abstract class CallState with _$CallState {
  const CallState._();

  const factory CallState({
    required bool isMuted,
    required bool isVideoDisabled,
    required int? remoteUid,
    required int localUid,
    required CallStatus callStatus,
    String? statusMessage,
    required int networkQuality,
    required bool remoteVideoEnabled, // uid -> video state
    required bool remoteAudioEnabled, // uid -> audio state
  }) = _CallState;

  factory CallState.initial() => CallState(
    isMuted: false,
    isVideoDisabled: false,
    remoteUid: null,
    localUid: 0,
    callStatus: CallStatus.ended,
    networkQuality: 0,
    remoteVideoEnabled: true,
    remoteAudioEnabled: true,
  );
}

enum CallStatus { idle, connecting, inCall, ended, permissionDenied, error }
