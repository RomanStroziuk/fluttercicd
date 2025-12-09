import 'environment.dart';

class AppConfig {
  static final dev = Environment(
    type: EnvironmentType.dev,
    name: 'Development',
    apiBaseUrl: 'https://dev-api.example.com',
  );

  static final staging = Environment(
    type: EnvironmentType.staging,
    name: 'Staging',
    apiBaseUrl: 'https://staging-api.example.com',
  );

  static final prod = Environment(
    type: EnvironmentType.prod,
    name: 'Production',
    apiBaseUrl: 'https://api.example.com',
  );
}
