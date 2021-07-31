import 'package:calculator/app/calculator/logic/providers.dart';
import 'package:calculator/app/calculator/presentation/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ResultText extends ConsumerWidget {
  const ResultText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final resultText = watch(resultTextProvider);
    return Expanded(
      flex: 3,
      child: Container(
        alignment: Alignment.bottomRight,
        color: Colors.black,
        child: Text(
          resultText,
          textAlign: TextAlign.end,
          style: resultTextStyle,
        ),
      ),
    );
  }
}
