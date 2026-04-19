import 'package:flutter/material.dart';

enum AppFlavor { dev, prod }

class AppConfig {
  final AppFlavor flavor;
  final String appName;
  final String apiBaseUrl;

  const AppConfig({
    required this.flavor,
    required this.appName,
    required this.apiBaseUrl,
  });
}

late final AppConfig appConfig;

void bootstrap(AppConfig config) {
  appConfig = config;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appConfig.appName,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appConfig.appName),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Flavor: ${appConfig.flavor.name}'),
              const SizedBox(height: 8),
              Text('API: ${appConfig.apiBaseUrl}'),
            ],
          ),
        ),
      ),
    );
  }
}