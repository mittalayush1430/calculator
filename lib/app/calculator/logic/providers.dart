import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_expressions/math_expressions.dart';

import '../utilities/constants.dart';

final resultTextProvider = StateNotifierProvider<ResultTextNotifier, String>(
  (ref) => ResultTextNotifier(
    state: "Initial",
    cm: ContextModel(),
    parser: Parser(),
    random: Random(),
  ),
);

class ResultTextNotifier extends StateNotifier<String> {
  ResultTextNotifier({
    required String state,
    required this.parser,
    required this.cm,
    required this.random,
  }) : super(state);

  final Parser parser;
  final ContextModel cm;
  final Random random;

  bool isError = false;

  void updateString(String value) {
    try {
      if (value == 'AC') {
        state = '';
      } else if (value == '=') {
        if (state.contains("%")) {
          state = state.replaceAll('%', '/100');
        }
        if (state.contains("x")) {
          state = state.replaceAll('x', '*');
        }
        final exp = parser.parse(state);
        final eval = exp.evaluate(EvaluationType.REAL, cm);
        state = eval.toInt().toString();
      } else if (value == '<-' && state != '') {
        state = state.substring(0, state.length - 1);
      } else {
        if (isError) {
          state = "";
          isError = false;
        }
        state += value;
      }
    } catch (e) {
      debugPrint("Error Occured $e");
      state = errorList[random.nextInt(errorList.length)];
      isError = true;
    }
  }
}
