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
  void updateScreen(String value) {
    if (value == 'AC') {
      setState(() => text = '');
    } else if (value == '=') {
      final parser = Parser();
      final cm = ContextModel();
      final exp = parser.parse(text);
      final eval = (exp.evaluate(EvaluationType.REAL, cm) as num).toDouble();
      setState(() => text = eval.toInt().toString());
    } else {
      setState(() => text += value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Column(
        children: [
          Expanded(
            child: Container(
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
            flex: 3,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: buttonList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                return BaseButtonTemplate(
                  text: buttonList[index],
                  buttonColor: blueGreyShade900,
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
