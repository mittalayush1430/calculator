import 'package:flutter/material.dart';

import '../data/model/button_model.dart';
import '../presentation/theme/colors.dart';

const List<String> buttonList = [
  'AC',
  '<-',
  '%',
  '/',
  '7',
  '8',
  '9',
  'x',
  '4',
  '5',
  '6',
  '-',
  '1',
  '2',
  '3',
  '+',
  '+/-',
  '0',
  '.',
  '=',
];

const List<String> errorList = [
  "Mere muh se nikal gyi!!",
  "Sorry Bhaiya!",
  "OK REPORT",
  "Kya hua BUDDY ?",
  "Beta tumse na ho payega!",
  "Kya karun main mar jaun ?",
];

List<ButtonModel> buttonModelList = buttonList.map((text) {
  if (['='].contains(text)) {
    return ButtonModel(
      text: text,
      color: MyColors.orange,
    );
  } else if (![
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0',
    '+/-',
    '.',
  ].contains(text)) {
    return ButtonModel(
      text: text,
      color: Colors.blueGrey.shade900,
    );
  }
  return ButtonModel(text: text);
}).toList();
