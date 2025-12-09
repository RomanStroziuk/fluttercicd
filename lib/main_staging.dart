import 'package:flutter/material.dart';
import 'config/app_config.dart';
import 'config/environment.dart';
import 'main.dart';

void main() {
  Environment.init(AppConfig.staging);
  runApp(const MainApp());
}
