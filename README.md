# Structural Design Platform v8.7

This package contains the runtime Flutter app assembly with real local database execution templates using Drift / SQLite.

## v8.7 Main Upgrade

- Replaces in-memory runtime storage with Drift / SQLite template
- Stores projects, design runs, formula traces, report archives, calculation books, and project snapshots
- Adds migration SQL and database service initialization
- Adds local database smoke-test template

## Local commands

```bash
dart pub get
dart test

cd app_templates/flutter_runtime_app
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter test
flutter analyze
flutter run -d chrome
```
