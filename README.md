# hipstermeet

A flutter project as an assignment for the company HipSter created by Domain-Driven Design Architecture.
To know more about Domain Driven Design in flutter please visit:
https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/

## Agenda

Implement one-to-one video calling feature with Amazon Chime(preferred)/Agora/twillo/webRTC

### Require

- [Vscode](https://code.visualstudio.com/)
- [Flutter extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
- [FVM](https://fvm.app/docs/getting_started/installation)

### Optional

- [Bloc extension](https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc)
- [Version Lens](https://marketplace.visualstudio.com/items?itemName=pflannery.vscode-versionlens)
- [Coverage Gutters](https://marketplace.visualstudio.com/items?itemName=ryanluker.vscode-coverage-gutters)
- [Flutter Coverage](https://marketplace.visualstudio.com/items?itemName=Flutterando.flutter-coverage)

### Setup

1. Install [FVM](https://fvm.app/docs/getting_started/installation)
2. Git clone project
3. Open project with Vscode, check ".fvm/fvm_config.json" file, check the "flutterSdkVersion" inside and use `fvm use <flutterSdkVersion_you_saw>`
4. Restart vscode

### Flavor

| Flavor | Package name | App Name | Endpoint | 
|--|--|--|--|
| PROD | `com.brb.hipstermeet` | HipSter Meet | ReqRes API |
| DEV | `com.brb.hipstermeet.dev` | HipSter Meet Dev | ReqRes API |


### Build app

#### IOS

- `fvm flutter build ipa --release --split-debug-info --obfuscate --flavor dev -t lib/main_dev.dart`
- `fvm flutter build ipa --release --split-debug-info --obfuscate --flavor prod -t lib/main_prod.dart`

#### Android

- `fvm flutter build appbundle --release --split-debug-info --obfuscate --flavor mock -t lib/main_dev.dart`
- `fvm flutter build appbundle --release --split-debug-info --obfuscate --flavor dev -t lib/main_prod.dart`

## Before submit PR, please run

### Analyze

- `fvm flutter analyze --fatal-infos --fatal-warnings`

### Test Coverage

1. [Read this](https://codewithandrea.com/articles/flutter-test-coverage/)
2. `brew install lcov`
3. `fvm flutter test --coverage`
4. `genhtml coverage/lcov.info -o coverage/html`
5. `open coverage/html/index.html`

