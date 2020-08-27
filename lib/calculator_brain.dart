import 'constants.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = (weight / height / height) * 703;
    return _bmi.toStringAsFixed(1);
  }

  Weight getResult() {
    if (_bmi >= 25) {
      return Weight.Overweight;
    } else if (_bmi > 18.5) {
      return Weight.Normal;
    } else {
      return Weight.Underweight;
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight.';
    } else {
      return 'You have a lower than normal body weight.';
    }
  }
}
