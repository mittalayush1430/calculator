import 'package:flutter_test/flutter_test.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  final parser = Parser();
  final cm = ContextModel();
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
}
