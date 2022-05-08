import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPress, Key? key}) : super(key: key);
  final IconData? icon;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      shape: const CircleBorder(),
      fillColor: kSecondaryColour,
      constraints: const BoxConstraints.tightFor(width: 50, height: 50),
    );
  }
}
