import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../logic/providers.dart';
import '../theme/styles.dart';

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
          key: const ValueKey('Result Text'),
          textAlign: TextAlign.end,
          style: resultTextStyle,
        ),
      ),
    );
  }
}
