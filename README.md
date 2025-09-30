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

### Assumption and Limitation
1. Login : you need to use a valid email/password which is present in reqres.in, `eve.holt@reqres.in/cityslicka` is a valid login credential.
2. Meeting will be joined with a mock meeting id i.e, `meeting123`, there is no option for users to set custom meeting id.
3. Screen Sharing : Currently, the demo implements one-to-one video calling fully on mobile using Agora. The screen sharing feature works out-of-the-box on Web and Desktop platforms using the Agora SDK. On Android and iOS, screen sharing requires a native integration (using MediaProjection on Android and ReplayKit on iOS) because the Flutter SDK does not yet provide a direct API for mobile screen sharing. For this demo, I’ve added a placeholder for screen sharing on mobile, but the architecture is ready so that with minimal native code, full mobile screen sharing can be enabled. This approach ensures the app remains stable and fully functional on mobile while keeping the codebase future-proof for production-level screen sharing.
4. Push Notification : A client side push notification has been added when the remote user joins.
5. I do not have real IoS device, and in IoS simulator, there is no camera and microphone, so I could not test it on IoS.

### Setup

1. Install [FVM](https://fvm.app/docs/getting_started/installation)
2. Git clone project
3. Open project with Vscode, check ".fvm/fvm_config.json" file, check the "flutterSdkVersion" inside and use `fvm use <flutterSdkVersion_you_saw>`
4. Restart vscode

### Agora Setup

Goto, agora.io and create an account and then a test project in testing mode and get the App Id.
Goto root folder of the project and execute below commands:
`cp .env.example .env`
`cp .env.example .env.dev`

Then paste the App Id against AGORA_API_KEY
Then execute this command : `fvm flutter packages pub run build_runner build --delete-conflicting-outputs`
.env is for prod and .env.dev is for dev environment but for the sake of simplicity we will be using same App Id for both of the environment.

### Flavor

| Flavor | Package name | App Name | Endpoint | RTC Provider |
|--|--|--|--|--|
| PROD | `com.brb.hipstermeet` | HipSter Meet | `https://reqres.in/` | Agora |
| DEV | `com.brb.hipstermeet.dev` | HipSter Meet Dev | `https://reqres.in/` | Agora |

The use of flavor is to demonstrate how real-world flutter project is structured, in vscode you can run as debug after selecting the launch configuration.

### CICD

Under `.github/workflows' a file pull_request.yml has been added, this workflow will run on every PR on main branch, it will analyze code and run the test cases and show the coverage percentages.We can build the app here too but I did not do it.

### Build app

#### IOS

- `fvm flutter build ipa --release --split-debug-info --obfuscate --flavor dev -t lib/main_dev.dart`
- `fvm flutter build ipa --release --split-debug-info --obfuscate --flavor prod -t lib/main_prod.dart`

#### Android

- `fvm flutter build apk --release --split-debug-info --obfuscate --flavor dev -t lib/main_dev.dart`
- `fvm flutter build appbundle --release --split-debug-info --obfuscate --flavor prod -t lib/main_prod.dart`

## Before submit PR, please run

### Analyze

- `fvm flutter analyze --fatal-infos --fatal-warnings`

### Test Coverage

1. [Read this](https://codewithandrea.com/articles/flutter-test-coverage/)
2. `brew install lcov`(for first time only)
3. `fvm flutter test --coverage`
4. `genhtml coverage/lcov.info -o coverage/html`
5. `open coverage/html/index.html`

Few test cases has been added for demoing purpose only

