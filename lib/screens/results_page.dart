import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/card_box.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class Results extends StatelessWidget {
  const Results(
      {Key? key,
      required this.bmi,
      required this.interpretation,
      required this.result})
      : super(key: key);

  final String bmi;
  final String result;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Center(
              child: Text(
                'Results',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: CardBox(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result.toUpperCase(),
                    style: kWeightTextStyle.copyWith(
                        color: result == 'Normal' ? Colors.green : Colors.red),
                  ),
                  Text(
                    bmi,
                    style: kNumberTextStyle.copyWith(fontSize: 90),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kWeightTextStyle.copyWith(
                          fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onPress: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RECALCULATE',
          )
        ],
      ),
    );
  }
}
