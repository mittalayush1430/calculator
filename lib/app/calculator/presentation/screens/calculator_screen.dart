import 'package:calculator/app/calculator/presentation/theme/colors.dart';
import 'package:calculator/app/calculator/presentation/widgets/button_grid.dart';
import 'package:calculator/app/calculator/presentation/widgets/result_text.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.black,
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ResultText(),
            ButtonGrid(),
          ],
        ),
      ),
    );
  }
}
