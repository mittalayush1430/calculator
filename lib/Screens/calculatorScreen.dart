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
                    text: mc,
                    buttonColor: blueGreyShade900,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: mPlus,
                    buttonColor: blueGreyShade900,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: mMinus,
                    buttonColor: blueGreyShade900,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: mr,
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
                    text: ac,
                    buttonColor: blueGreyShade900,
                    textColor: orange,
                  ),
                  BaseButtonTemplate(
                    text: leftArrow,
                    buttonColor: blueGreyShade900,
                    textColor: orange,
                  ),
                  BaseButtonTemplate(
                    text: plusMinus,
                    buttonColor: blueGreyShade900,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: divide,
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
                    text: seven,
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: eight,
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: nine,
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: multiply,
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
                    text: four,
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: five,
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: six,
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: minus,
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
                    text: one,
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: two,
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: three,
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: plus,
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
                    text: percentage,
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: zero,
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: decimal,
                    buttonColor: blueGrey,
                    textColor: white,
                  ),
                  BaseButtonTemplate(
                    text: equal,
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
