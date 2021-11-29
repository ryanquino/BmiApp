import 'dart:math';

class BMICalculator {
  BMICalculator({required this.weight, required this.height});

  final double weight;
  final double height;

  double calculateBMI() {
    double bmi = weight / pow(height / 100, 2);

    return bmi;
  }

  String getResult() {
    if (calculateBMI() > 30) {
      return 'Obese';
    } else if (calculateBMI() > 25) {
      return 'Overweight';
    } else if (calculateBMI() > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (calculateBMI() > 30) {
      return 'You are obese. Please exercise more.';
    } else if (calculateBMI() > 25) {
      return 'You are overweight. Please diet.';
    } else if (calculateBMI() > 18.5) {
      return 'Congratulations. You have a normal body mass index.';
    } else {
      return 'You are underweight. Please eat more.';
    }
  }
}
