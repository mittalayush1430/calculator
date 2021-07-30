import 'package:calculator/calculator_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Calculator());

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CALCULATOR',
      home: CalculatorScreen(),
    );
  }
}