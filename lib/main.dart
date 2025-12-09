import 'package:flutter/material.dart';
import 'config/environment.dart';
import 'config/app_config.dart';

void main() {
  Environment.init(AppConfig.dev);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Environment.current.name,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('${Environment.current.name} Environment'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Environment: ${Environment.current.name}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20),
              Text('API: ${Environment.current.apiBaseUrl}'),
            ],
          ),
        ),
      ),
    );
  }
}
