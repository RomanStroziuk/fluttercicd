enum EnvironmentType { dev, staging, prod }

class Environment {
  final EnvironmentType type;
  final String name;
  final String apiBaseUrl;

  Environment({
    required this.type,
    required this.name,
    required this.apiBaseUrl,
  });

  static late Environment _current;

  static Environment get current => _current;

  static void init(Environment environment) {
    _current = environment;
  }
}
