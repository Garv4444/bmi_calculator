import 'package:flutter/material.dart';
import '../constants.dart';

class CardBox extends StatelessWidget {
  final Color? colour;
  final Widget? cardChild;
  final void Function()? onPress;
  CardBox({this.colour, Key? key, this.cardChild, this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour ?? kCardColour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
