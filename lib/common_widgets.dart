import 'package:flutter/material.dart';

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
    return Container(
      padding: const EdgeInsets.all(3.0),
      child: TextButton(
        onPressed: () => callBack(text),
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          primary: Colors.white,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}
