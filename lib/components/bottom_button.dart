import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final void Function() onPress;
  BottomButton({Key? key, required this.onPress, required this.buttonTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonStyle,
          ),
        ),
        width: double.infinity,
        height: kBottomButtonHeight,
        color: kSecondaryColour,
        margin: const EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
