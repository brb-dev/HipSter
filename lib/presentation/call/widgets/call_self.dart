part of '../call_screen.dart';

class _CallSelf extends StatelessWidget {
  final RtcEngine engine;
  const _CallSelf({required this.engine});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CallBloc, CallState>(
      buildWhen: (previous, current) => previous.localUid != current.localUid,
      builder: (context, state) {
        return Positioned(
          right: 16,
          bottom: 120,
          child: Draggable(
            feedback: Material(
              color: Colors.transparent,
              child: _Preview(engine: engine, state: state),
            ),
            childWhenDragging: const SizedBox.shrink(),
            child: _Preview(engine: engine, state: state),
          ),
        );
      },
    );
  }
}

class _Preview extends StatelessWidget {
  final RtcEngine engine;
  final CallState state;
  const _Preview({required this.engine, required this.state});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 120,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.errorRed),
        ),
        child: AgoraVideoView(
          controller: VideoViewController(
            rtcEngine: engine,
            canvas: VideoCanvas(uid: 0),
          ),
        ),
      ),
    );
  }
}
