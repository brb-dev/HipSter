import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:hipstermeet/env/env.dart';
import 'package:hipstermeet/locator.dart';

class AgoraUtil {
  Future<RtcEngine> initAgora() async {
    final engine = createAgoraRtcEngine();
    await engine.initialize(
      RtcEngineContext(
        appId: locator<Env>().agoraAPIKey,
        channelProfile: ChannelProfileType.channelProfileCommunication,
      ),
    );

    await engine.enableVideo();
    await engine.enableAudio();
    await engine.enableLocalAudio(true);
    await engine.enableLocalVideo(true);
    await engine.muteLocalVideoStream(false);
    await engine.muteLocalAudioStream(false);
    return engine;
  }
}
