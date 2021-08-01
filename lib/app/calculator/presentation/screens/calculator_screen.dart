import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../widgets/button_grid.dart';
import '../widgets/result_text.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.black,
      body: SizedBox(
        // width: MediaQuery.of(context).size.width,
        width: 300,
        child: Column(
          children: const [
            ResultText(),
            Expanded(flex: 7, child: ButtonGrid()),
          ],
        ),
      ),
    );
  }
}
