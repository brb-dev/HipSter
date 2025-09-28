part of '../call_screen.dart';

class _RemoteAudio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CallBloc, CallState>(
      buildWhen: (previous, current) =>
          previous.remoteAudioEnabled != current.remoteAudioEnabled,
      builder: (context, state) {
        return state.remoteAudioEnabled
            ? SizedBox.shrink()
            : Positioned(
                top: 40,
                left: 16,
                child: Icon(Icons.mic_off, size: 30, color: AppColor.white),
              );
      },
    );
  }
}
