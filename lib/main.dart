import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/calculator/presentation/screens/calculator_screen.dart';

void main() => runApp(const ProviderScope(child: Calculator()));

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
