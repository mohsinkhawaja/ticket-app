# Travel Ticket UI

A Flutter travel-booking interface demo with ticket cards, hotel pages and a barcode display.

## What is included

- Home, search, ticket and hotel screens
- Reusable layout, text and ticket components
- Bundled images and local example data

## Requirements

- Flutter SDK (Dart 3); start with Flutter **3.44.0** for this source revision. See the [official install guide](https://docs.flutter.dev/install).
- Git, or download this repository through **Code > Download ZIP** and extract it.
- A configured Android device/emulator; Chrome is also available for a web preview.
- Android builds require the Android SDK and a compatible JDK. iOS builds require macOS and Xcode.

## Download and run

```sh
git clone https://github.com/mohsinkhawaja/ticket-app.git
cd ticket-app
flutter doctor
flutter pub get
flutter devices
flutter run
```

`flutter run` prompts for an available target. To select one explicitly, use `flutter run -d <device-id>` with the ID printed by `flutter devices`.

For a browser preview: `flutter run -d chrome`. Native plugins may have platform-specific limitations.

## Code map

lib/base/utils/all_json.dart stores demo data; lib/screens/ contains the screens; lib/base/res/ contains styles and reusable components.

`pubspec.yaml` declares dependencies and assets. Keep `pubspec.lock` when reproducing an app checkout; generated files under `.dart_tool/` and `build/` should not be committed.

## Configuration and current scope

This is an interface demo using local sample data. It does not book flights, make payments, issue valid tickets or connect to a booking API. No credentials are required.

## Checks and builds

```sh
flutter analyze --no-fatal-infos --no-fatal-warnings
flutter build apk --debug
```

The analysis flags leave existing style warnings visible while still failing on errors. Debug APKs are for development; publishing requires your own release signing and target-platform setup. An Android/iOS build is not implied by passing Dart analysis.

## Troubleshooting

- On Windows, Flutter plugins need symlink support. If `flutter pub get` requests Developer Mode, follow Flutter's platform setup on your own machine; do not edit project code to bypass it.
- Run commands in the folder containing this app's `pubspec.yaml`.
- If a dependency fails to resolve, use the documented Flutter version and read the solver's message before upgrading packages.
- Check `flutter doctor` for missing platform tooling. A source checkout does not include the Android SDK, Xcode or release credentials.

## Project status

Source and setup were reviewed in November 2026. See the included scope notes before treating this learning project as a production application. No paid service, hosted API availability or production readiness is promised.

## Manual smoke flow

Run the app, open each main screen, create and remove a sample record where supported, then restart and check the documented persistence behavior. For Firebase apps, use only your own configured development project. There is no automated test suite for this repository yet.

Install the Flutter SDK in a path without spaces (for example `C:/dev/flutter`) to avoid Windows native-asset hook issues. Your project folder can remain separate from the SDK.
