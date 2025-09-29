import 'package:envied/envied.dart';
import 'package:hipstermeet/config.dart';
import 'package:hipstermeet/locator.dart';

part 'env.g.dart';

@Envied(path: '.env', name: 'Prod')
@Envied(path: '.env.dev', name: 'Dev')
abstract class Env {
  factory Env() => _instance;

  static final Env _instance = switch (locator<Config>().appFlavor) {
    Flavor.dev => _Dev(),
    Flavor.prod => _Prod(),
  };

  @EnviedField(varName: 'AGORA_API_KEY', obfuscate: true)
  final String agoraAPIKey = _instance.agoraAPIKey;
}
