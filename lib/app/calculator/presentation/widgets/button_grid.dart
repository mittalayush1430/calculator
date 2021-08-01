import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../logic/providers.dart';
import '../../utilities/constants.dart';
import '../theme/styles.dart';

class ButtonGrid extends ConsumerWidget {
  const ButtonGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return GridView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: buttonModelList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        final button = buttonModelList[index];
        return TextButton(
          key: ValueKey(button.text),
          onPressed: () => context
              .read(resultTextProvider.notifier)
              .updateString(button.text),
          style: TextButton.styleFrom(
            backgroundColor: button.color,
          ),
          child: Text(
            button.text,
            style: buttonTextStyle,
          ),
        );
      },
    );
  }
}
