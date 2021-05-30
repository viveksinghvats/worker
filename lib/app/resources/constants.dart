import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

final brownTTheme = const Color.fromRGBO(255, 141, 90, 1);
final lightBlueTTheme = const Color.fromRGBO(125, 199, 255, 1);
final darkTealTTheme = const Color.fromRGBO(36, 66, 75, 1);
final darkBlueTTheme = const Color.fromRGBO(35, 46, 53, 1);
final whiteShadeTTheme = const Color.fromRGBO(251, 248, 252, 1);

const int asterisk = 0x2A;

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.blueAccent;
  }
  return Colors.green;
}
