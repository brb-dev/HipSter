part of '../call_screen.dart';

class _CallBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CallBloc, CallState>(
      buildWhen: (previous, current) =>
          previous.isMuted != current.isMuted ||
          previous.isVideoDisabled != current.isVideoDisabled,
      builder: (context, state) {
        return Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(
                  state.isMuted ? Icons.mic_off : Icons.mic,
                  color: AppColor.white,
                ),
                onPressed: () =>
                    context.read<CallBloc>().add(CallEvent.toggleMute()),
              ),
              IconButton(
                icon: Icon(
                  state.isVideoDisabled ? Icons.videocam_off : Icons.videocam,
                  color: AppColor.white,
                ),
                onPressed: () =>
                    context.read<CallBloc>().add(CallEvent.toggleVideo()),
              ),
              IconButton(
                icon: Icon(Icons.screen_share, color: AppColor.white),
                onPressed: () {
                  // Basic placeholder: screen share is only supported on Web/Desktop in free SDK
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Screen share works only on Web/Desktop demo",
                      ),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.call_end, color: Colors.red),
                onPressed: () async {
                  context.read<CallBloc>().add(CallEvent.leaveMeeting());
                  await WakelockPlus.disable();
                  if (context.mounted) {
                    context.router.popForced();
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
