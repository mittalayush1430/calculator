import 'package:calculator/Utilities/constants.dart';
import 'package:flutter/material.dart';

class ResultBar extends StatefulWidget {
  const ResultBar({
    Key? key,
  }) : super(key: key);

  @override
  _ResultBarState createState() => _ResultBarState();
}

class _ResultBarState extends State<ResultBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Text(
          resultBarText,
          textAlign: TextAlign.end,
          style: TextStyle(color: Colors.grey, fontSize: 40.0),
        ),
      ),
    );
  }
}

class BaseButtonTemplate extends StatefulWidget {
  const BaseButtonTemplate({
    Key? key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
    // required this.onPressed,
  }) : super(key: key);
  final String text;
  final Color buttonColor;
  final Color textColor;

  @override
  _BaseButtonTemplateState createState() => _BaseButtonTemplateState();
}

class _BaseButtonTemplateState extends State<BaseButtonTemplate> {
  void reflectToResultBar() {
    // resultBarText = ValueGetter;
    print('popla1');
    print(resultBarText);
    print('popla3');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(3.0),
        child: TextButton(
          onPressed: () {
            print('popla12');
            reflectToResultBar();
            print('popla');
          },
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: widget.textColor,
                fontSize: 25.0,
              ),
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: widget.buttonColor,
            primary: Colors.white,
          ),
        ),
      ),
    );
  }
}
