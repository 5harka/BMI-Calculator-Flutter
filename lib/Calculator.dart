import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double bmi = 0;

  String calculatorBMI() {
    bmi = weight / pow(height / 100, 2); // Update the bmi field here
    return bmi.toStringAsFixed(1);
  }

  String getResults() {
    print(bmi);
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi < 18.5) {
      return 'Underweight';
    } else {
      return 'Normal';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have a higher than normal BMI, Try to exercise more.';
    } else if (bmi < 18.5) {
      return 'You have a lower than normal BMI, Try to avoid being in a calorie deficit.';
    } else {
      return 'You have a normal body weight. Good Job!';
    }
  }
}