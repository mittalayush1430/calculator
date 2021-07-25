import '../Utilities/constants.dart';
import '../Widgets/widgets.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: black,
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ResultBar(),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  BaseButtonTemplate(
                    text: 'mc',
                    buttonColor: blueGreyShade900,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: 'm+',
                    buttonColor: blueGreyShade900,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: 'm-',
                    buttonColor: blueGreyShade900,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: 'mr',
                    buttonColor: blueGreyShade900,
                    textColor: white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  BaseButtonTemplate(
                    text: 'AC',
                    buttonColor: blueGreyShade900,
                    textColor: orange,
                  ),
                  BaseButtonTemplate(
                    text: '<-',
                    buttonColor: blueGreyShade900,
                    textColor: orange,
                  ),
                  BaseButtonTemplate(
                    text: '+/-',
                    buttonColor: blueGreyShade900,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: '/',
                    buttonColor: blueGreyShade900,
                    textColor: white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  BaseButtonTemplate(
                    text: '7',
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: '8',
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: '9',
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: 'X',
                    buttonColor: blueGreyShade900,
                    textColor: white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  BaseButtonTemplate(
                    text: '4',
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: '5',
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: '6',
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: '-',
                    buttonColor: blueGreyShade900,
                    textColor: white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  BaseButtonTemplate(
                    text: '1',
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: '2',
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: '3',
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: '+',
                    buttonColor: blueGreyShade900,
                    textColor: white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  BaseButtonTemplate(
                    text: '%',
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: '0',
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: '.',
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: '=',
                    buttonColor: orange,
                    textColor: white,
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.0),
          ],
        ),
      ),
    );
  }
}
