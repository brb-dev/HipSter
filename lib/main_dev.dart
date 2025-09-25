import 'package:hipstermeet/app.dart';
import 'package:hipstermeet/config.dart';

Future<void> main() async {
  await initialSetup(flavor: Flavor.dev);
  runAppWithCrashlyticsAndLocalization(flavor: Flavor.dev);
}
