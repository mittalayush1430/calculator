import 'package:calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    'Tapping AC should clear the text',
    (WidgetTester tester) async {
      await tester.pumpWidget(const ProviderScope(child: Calculator()));
      expect(find.text("Initial"), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey('AC')));
      await tester.pumpAndSettle();
      expect(find.text("Initial"), findsNothing);
      expect(find.text(""), findsOneWidget);
    },
  );

  testWidgets(
    'Simulating 1 + 1 should be 2',
    (WidgetTester tester) async {
      await tester.pumpWidget(const ProviderScope(child: Calculator()));
      expect(find.text("Initial"), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey('AC')));
      await tester.tap(find.byKey(const ValueKey('1')));
      await tester.tap(find.byKey(const ValueKey('+')));
      await tester.tap(find.byKey(const ValueKey('1')));
      await tester.tap(find.byKey(const ValueKey('=')));
      await tester.pumpAndSettle();
      expect(find.text("Initial"), findsNothing);
      expect(find.byKey(const ValueKey("Result Text")), findsOneWidget);
      final text = tester.firstWidget<Text>(
        find.byKey(const ValueKey('Result Text')),
      );
      expect(text, "2");
    },
  );
}
