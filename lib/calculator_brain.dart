class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = (height / weight) * 162;
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 4) {
      return 'Your Total Amount';
    } else if (_bmi > 3.5) {
      return 'Normal';
    } else {
      return 'Poor';
    }
  }

  String getInterpretation() {
    if (_bmi >= 4) {
      return '';
    } else if (_bmi >= 3.5) {
      return 'Nice man improve it. ';
    } else {
      return 'You have lower than normal';
    }
  }
}
