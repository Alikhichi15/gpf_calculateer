import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Excellent';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Poor';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Excellent keep it up.';
    } else if (_bmi >= 18.5) {
      return 'Nice man improve it. ';
    } else {
      return 'You have lower than normal';
    }
  }
}
