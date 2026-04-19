import 'main_common.dart';

void main() {
  bootstrap(
    const AppConfig(
      flavor: AppFlavor.prod,
      appName: 'Useful App',
      apiBaseUrl: 'https://api.example.com',
    ),
  );
}