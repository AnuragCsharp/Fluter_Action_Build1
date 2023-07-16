import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have Higher than Normal body weight. Exercise More';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'You are doing Great! Keep it up';
    } else {
      return 'You have lower body weight. Eat more and maintain a healthy and balanced diet';
    }
  }
}
