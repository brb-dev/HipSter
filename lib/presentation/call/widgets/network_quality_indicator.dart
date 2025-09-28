part of '../call_screen.dart';

class _NetworkQualityIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CallBloc, CallState>(
      buildWhen: (previous, current) =>
          previous.networkQuality != current.networkQuality,
      builder: (context, state) {
        return Positioned(
          top: 40,
          right: 20,
          child: Icon(
            Icons.network_wifi,
            size: 20,
            color: _networkColor(state.networkQuality),
          ),
        );
      },
    );
  }

  Color _networkColor(int quality) {
    switch (quality) {
      case 1:
      case 2:
        return Colors.green;
      case 3:
        return Colors.orange;
      case 4:
      case 5:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
