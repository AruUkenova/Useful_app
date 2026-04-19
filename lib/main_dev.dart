import 'main_common.dart';

void main() {
  bootstrap(
    const AppConfig(
      flavor: AppFlavor.dev,
      appName: 'Useful App DEV',
      apiBaseUrl: 'https://dev-api.example.com',
    ),
  );
}