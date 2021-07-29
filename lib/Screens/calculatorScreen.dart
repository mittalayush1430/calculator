import 'package:math_expressions/math_expressions.dart';

import '../Utilities/constants.dart';
import '../Widgets/widgets.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String text = '';
  void updateScreen(String value) {
    if (value == 'AC') {
      setState(() {
        text = '';
      });
    } else if (value == '=') {
      Parser p = Parser();
      ContextModel cm = ContextModel();
      Expression exp = p.parse(text);
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      setState(() {
        text = eval.toInt().toString();
      });
    } else if (value == '<-') {
      setState(() {});
    } else {
      setState(() {
        text += value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Expanded(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 50.0,
                child: ResultBar(
                  text: text,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 50,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: buttonList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return BaseButtonTemplate(
                      text: buttonList[index],
                      buttonColor: blueGreyShade900,
                      textColor: white,
                      callBack: (text) => updateScreen(text),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
