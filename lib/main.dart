import 'package:calculator/Widgets/widgets.dart';

import 'Screens/calculatorScreen.dart';
import 'package:flutter/material.dart';

import 'Utilities/constants.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CALCULATOR',
      home: Sample(),
    );
  }
}

class Sample extends StatelessWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.blue,
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
                    callBack: (text) => () {},
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
