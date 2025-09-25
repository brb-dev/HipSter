import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hipstermeet/config.dart';
import 'package:hipstermeet/locator.dart';

Future<void> initialSetup({required Flavor flavor}) async {
  setupLocator();
  final config = locator<Config>();
  config.appFlavor = flavor;
}

void runAppWithCrashlyticsAndLocalization({required Flavor flavor}) {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(App(flavorName: flavor.name));
    },
    (error, stackTrace) {
      //Log Error
    },
  );
}

class App extends StatelessWidget {
  const App({super.key, required this.flavorName});
  final String flavorName;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('HipSter Meet')),
        body: Center(child: Text('This is the $flavorName version')),
      ),
    );
  }
}
