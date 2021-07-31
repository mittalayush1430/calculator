import 'dart:math';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'common_widgets.dart';
import 'constants.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String text = '';
  bool isError = false;
  void updateScreen(String value) {
    try {
      if (value == 'AC') {
        setState(() => text = '');
      } else if (value == '=') {
        final parser = Parser();
        final cm = ContextModel();
        if (text.contains("%")) {
          text = text.replaceAll('%', '/100');
        }
        if (text.contains("x")) {
          text = text.replaceAll('x', '*');
        }
        final exp = parser.parse(text);
        final eval = exp.evaluate(EvaluationType.REAL, cm);
        setState(() => text = eval.toInt().toString());
      } else if (value == '<-' && text != '') {
        setState(() => text = text.substring(0, text.length - 1));
      } else {
        if (isError) {
          setState(() {
            text = "";
            isError = false;
          });
        }
        setState(() => text += value);
      }
    } catch (e) {
      debugPrint("Error Occured $e");
      final r = Random();
      setState(() {
        text = errorList[r.nextInt(errorList.length)];
        isError = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.bottomRight,
              color: Colors.black,
              child: Text(
                text,
                textAlign: TextAlign.end,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 40.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: buttonModelList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                final button = buttonModelList[index];
                return BaseButtonTemplate(
                  text: button.text,
                  buttonColor: button.color,
                  textColor: white,
                  callBack: updateScreen,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
