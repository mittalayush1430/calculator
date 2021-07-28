import 'package:calculator/Utilities/constants.dart';
import 'package:flutter/material.dart';

class ResultBar extends StatelessWidget {
  const ResultBar({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Text(
          text,
          textAlign: TextAlign.end,
          style: TextStyle(color: Colors.grey, fontSize: 40.0),
        ),
      ),
    );
  }
}

class BaseButtonTemplate extends StatelessWidget {
  const BaseButtonTemplate({
    Key? key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.callBack,
  }) : super(key: key);
  final String text;
  final Color buttonColor;
  final Color textColor;
  final Function(String text) callBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(3.0),
        child: TextButton(
          onPressed: () {
            callBack(text);
          },
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 25.0,
              ),
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: buttonColor,
            primary: Colors.white,
          ),
        ),
      ),
    );
  }
}
