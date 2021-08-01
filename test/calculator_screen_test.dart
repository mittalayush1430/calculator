import 'package:calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  late Parser parser;
  late ContextModel cm;

  setUpAll(() {
    parser = Parser();
    cm = ContextModel();
  });

  group("Unit Tests", () {
    group('Division Tests', () {
      test('Divide 10 by 2 is equal to 5', () {
        final exp = parser.parse('10/2');
        final eval = exp.evaluate(EvaluationType.REAL, cm);
        expect(eval, 5);
      });

      test('Divide 1 by 0 should give Error', () {
        final exp = parser.parse('1/0');
        final eval = exp.evaluate(EvaluationType.REAL, cm);
        expect(eval, double.infinity);
      });
    });
    group("Addition Tests", () {
      test('Adding 1 and 1 is equal to 2', () {
        final exp = parser.parse('1+1');
        final eval = exp.evaluate(EvaluationType.REAL, cm);
        expect(eval, 2);
      });

      test('Return type of addition operation', () {
        final exp = parser.parse('4.0+3.2');
        final eval = exp.evaluate(EvaluationType.REAL, cm).toInt();
        expect(eval, 7);
        expect(eval, isA<int>());
      });
    });
    group("Subtraction Tests", () {
      test('Subtract 1 from 10 is equal to 9', () {
        final exp = parser.parse('10-1');
        final eval = exp.evaluate(EvaluationType.REAL, cm);
        expect(eval, 9);
      });

      test('Subtract 10 from 1 is equal to -9', () {
        final exp = parser.parse('1-10');
        final eval = exp.evaluate(EvaluationType.REAL, cm);
        expect(eval, -9);
      });
    });
    group("Multiplaction Tests", () {
      test('Multiply 45 with 3.0 is equal to 135.0', () {
        final exp = parser.parse('45*3.0');
        final eval = exp.evaluate(EvaluationType.REAL, cm);
        expect(eval, 135.0);
      });
      test("whether providing x turns to multiply or not", () {
        String text = '45x3.0';
        text = text.replaceAll('x', '*');
        final exp = parser.parse(text);
        final eval = exp.evaluate(EvaluationType.REAL, cm);
        expect(eval, 135.0);
      });
    });
    group("Percentage Tests", () {
      test('50 % of 30 should be 15', () {
        String text = '50%*30';
        if (text.contains("%")) {
          text = text.replaceAll('%', '/100');
          final exp = parser.parse(text);
          final eval = exp.evaluate(EvaluationType.REAL, cm);
          expect(eval, 15);
        }
      });
    });
  });

  group('Widget Tests', () {
    testWidgets(
      'Renders exactly 20 Calculator Buttons on Screen',
      (WidgetTester tester) async {
        // await tester.pumpWidget(const Calculator());
        await tester.pumpWidget(const ProviderScope(child: Calculator()));
        expect(find.byType(TextButton, skipOffstage: false), findsNWidgets(20));
      },
    );
    testWidgets(
      'Tapping AC should clear the text',
      (WidgetTester tester) async {
        await tester.pumpWidget(const ProviderScope(child: Calculator()));
        // final Text text = tester.firstWidget(
        //   find.byKey(const ValueKey('Result Text')),
        // );
        expect(find.text("Initial"), findsOneWidget);
        await tester.tap(find.widgetWithText(TextButton, 'AC'));
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
        await tester.tap(find.widgetWithText(TextButton, 'AC'));
        await tester.tap(find.widgetWithText(TextButton, '1'));
        await tester.tap(find.widgetWithText(TextButton, '+'));
        await tester.tap(find.widgetWithText(TextButton, '1'));
        await tester.tap(find.widgetWithText(TextButton, '='));
        await tester.pumpAndSettle();
        expect(find.text("Initial"), findsNothing);
        expect(find.byKey(const ValueKey("Result Text")), findsOneWidget);
        final Text text = tester.firstWidget(
          find.byKey(const ValueKey('Result Text')),
        );
        expect(text.data, "2");
      },
    );
  });

  group('Golden Tests', () {
    // For First time run this: flutter test --update-goldens
    // Afterwards you can run this: flutter test
    testWidgets('matches golden file', (tester) async {
      await tester.pumpWidget(const ProviderScope(child: Calculator()));
      await expectLater(
        find.byType(Calculator),
        matchesGoldenFile('goldens/calculator_app.png'),
      );
    });
  });
}

/**
 * ! Important Stuff
 * Try Mockito
 * Remember Golden Tests commands
 * Remeber Test Coverage
 * 
 * Where it began: 29/07/2021 @ https://www.youtube.com/watch?v=xEFAiE0IB34&list=PLprI2satkVdFwpxo_bjFkCxXz5RluG8FY
 */
