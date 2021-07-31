import 'package:calculator/app/calculator/logic/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseButtonTemplate extends ConsumerWidget {
  const BaseButtonTemplate({
    Key? key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
  }) : super(key: key);
  final String text;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      child: TextButton(
        onPressed: () =>
            context.read(resultTextProvider.notifier).updateString(text),
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
