import 'dart:math';

class CalculatorBrain {
  int weight;
  int height;
  late double _bmi;
  CalculatorBrain({required this.weight, required this.height});
  String bmiResult() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You are fat, very fat. Almost like a sphere.';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight';
    } else {
      return 'You are paper thin, almost transparent.';
    }
  }
}
