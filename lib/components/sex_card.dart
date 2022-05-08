import 'package:flutter/material.dart';
import '../constants.dart';

class SexCards extends StatelessWidget {
  final IconData? sexIcon;
  final String sexText;
  SexCards(this.sexIcon, this.sexText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          sexIcon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          sexText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
