import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hipstermeet/application/call/call_bloc.dart';
import 'package:hipstermeet/locator.dart';
import 'package:hipstermeet/presentation/core/theme/app_color.dart';
import 'package:hipstermeet/presentation/core/utils/agora/agora_util.dart';
import 'package:hipstermeet/presentation/core/widgets/shimmer/loading_shimmer.dart';

part 'widgets/call_self.dart';
part 'widgets/call_remote.dart';
part 'widgets/call_bottom.dart';
part 'widgets/network_quality_indicator.dart';
part 'widgets/remote_audio.dart';

@RoutePage()
class CallScreen extends StatelessWidget {
  const CallScreen({super.key, required this.meetingId});

  final String meetingId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: locator<AgoraUtil>().initAgora(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: LoadingShimmer.logo());
          final engine = snapshot.data!;
          return BlocProvider(
            create: (_) => CallBloc(engine: engine)
              ..add(CallEvent.initialized())
              ..add(CallEvent.joinMeeting(meetingId: meetingId)),
            child: _PrivateCallSection(engine: engine, meetingId: meetingId),
          );
        },
      ),
    );
  }
}

class _PrivateCallSection extends StatelessWidget {
  const _PrivateCallSection({required this.engine, required this.meetingId});
  final RtcEngine engine;
  final String meetingId;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _CallRemote(engine: engine, meetingId: meetingId),
        _CallSelf(engine: engine),
        _CallBottom(),
        _NetworkQualityIndicator(),
        _RemoteAudio(),
      ],
    );
  }
}
