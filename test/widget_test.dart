import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_14/main.dart';
import 'package:flutter_application_14/config/environment.dart';
import 'package:flutter_application_14/config/app_config.dart';

void main() {
  testWidgets('Environment display test', (WidgetTester tester) async {
    Environment.init(AppConfig.dev);
    
    await tester.pumpWidget(const MainApp());

    expect(find.text('Development Environment'), findsOneWidget);
    expect(find.text('Environment: Development'), findsOneWidget);
  });
}
