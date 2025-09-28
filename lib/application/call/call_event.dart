part of 'call_bloc.dart';

@freezed
class CallEvent with _$CallEvent {
  const factory CallEvent.initialized() = _Initialized;
  const factory CallEvent.joinMeeting({required String meetingId}) =
      _JoinMeeting;
  const factory CallEvent.leaveMeeting() = _LeaveMeeting;

  const factory CallEvent.toggleMute() = _ToggleMute;
  const factory CallEvent.toggleVideo() = _ToggleVideo;
  // Local/remote updates
  const factory CallEvent.setLocalUID({required int localUid}) = _SetLocalUID;
  const factory CallEvent.setRemoteUid({int? remoteUid}) = _SetRemoteUid;
  const factory CallEvent.removeRemoteUID({required int remoteUid}) =
      _RemoveRemoteUID;

  const factory CallEvent.setCallStatus({
    required CallStatus status,
    String? message,
  }) = _SetCallStatus;
  const factory CallEvent.setNetworkQuality({required int quality}) =
      _SetNetworkQuality;
  const factory CallEvent.setRemoteVideoEnabled({required bool enabled}) =
      _SetRemoteVideoEnabled;
  const factory CallEvent.setRemoteAudioEnabled({required bool enabled}) =
      _SetRemoteAudioEnabled;

  // Screen share placeholders
  const factory CallEvent.startScreenShare() = _StartScreenShare;
  const factory CallEvent.stopScreenShare() = _StopScreenShare;
}
