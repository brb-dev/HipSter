part of '../call_screen.dart';

class _CallRemote extends StatelessWidget {
  final RtcEngine engine;
  final String meetingId;
  const _CallRemote({required this.engine, required this.meetingId});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CallBloc, CallState>(
      buildWhen: (previous, current) =>
          previous.remoteUid != current.remoteUid ||
          previous.remoteVideoEnabled != current.remoteVideoEnabled,
      builder: (context, state) {
        return state.remoteUid == null
            ? _WaitingForParticipant()
            : state.remoteUid != null && !state.remoteVideoEnabled
            ? _ParticipantVideoIsOff()
            : AgoraVideoView(
                controller: VideoViewController.remote(
                  rtcEngine: engine,
                  canvas: VideoCanvas(uid: state.remoteUid),
                  connection: RtcConnection(channelId: meetingId),
                ),
              );
      },
    );
  }
}

class _WaitingForParticipant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.black,
      width: double.maxFinite,
      height: double.maxFinite,
      child: Center(
        child: Text(
          "Waiting for participant...",
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: AppColor.white),
        ),
      ),
    );
  }
}

class _ParticipantVideoIsOff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.black,
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.videocam_off, size: 30, color: AppColor.white),
          Text(
            "Remote video is off",
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppColor.white),
          ),
        ],
      ),
    );
  }
}
