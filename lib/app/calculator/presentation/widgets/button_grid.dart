import 'package:calculator/app/calculator/presentation/theme/colors.dart';
import 'package:calculator/app/calculator/utilities/common_widgets.dart';
import 'package:calculator/app/calculator/utilities/constants.dart';
import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: GridView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: buttonModelList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index) {
          final button = buttonModelList[index];
          return BaseButtonTemplate(
            text: button.text,
            buttonColor: button.color,
            textColor: MyColors.white,
          );
        },
      ),
    );
  }
}
