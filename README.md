# useful_app

Flutter application with CI/CD and environment-based configuration.

## Features

* dev / prod flavors
* GitHub Actions CI
* automatic build number for releases
* debug & release APK builds

## Run locally

```bash
flutter run --flavor dev -t lib/main_dev.dart
flutter run --flavor prod -t lib/main_prod.dart
```

## Build APK

```bash
flutter build apk --flavor dev -t lib/main_dev.dart
flutter build apk --flavor prod -t lib/main_prod.dart
```

## CI

On every push:

* flutter pub get
* flutter analyze
* flutter test
* build debug APK

On release:

* build release APK
* auto-increment build number

