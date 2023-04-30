import 'dart:math';

import 'package:bmi_caculator/InputPage.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight, required this.selectedGender});

  late Gender? selectedGender;
  late int height;
  late int weight;

  double _bmi = 0;

  String calculateBMI() {
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
    if(selectedGender == Gender.male){
      if (_bmi >= 25) {
        return 'You have a higher than normal body weight. Try to exercise more.';
      } else if (_bmi >= 18.5) {
        return 'You have a normal body weight. Good job!'
            'អ្នកគឺសង្ហាដូចវិច្ឆិកាចឹង';
      } else {
        return 'You have a lower than normal body weight. You can eat a bit more.'
            'ខ្លួនមិនសមមាឌ មាឌមិនសមក្បាលគួរទៅងាប់ទៅ';
      }
    }else{
      if (_bmi >= 25) {
        return 'You have a higher than normal body weight. Try to exercise more.'
            'អ្នកមានរូបរាងអាក្រក់ណាសើស្រីទេតែមិនចេះថែខ្លួន';
      } else if (_bmi >= 18.5) {
        return 'You have a normal body weight. Good job!'
            'អ្នកស្អាតណាស់ ដូចទេពអប្ស';
      } else {
        return 'You have a lower than normal body weight. You can eat a bit more.'
            'ខ្លួនមិនសមមាឌ មាឌមិនសមក្បាលគួរទៅងាប់ទៅនាង';
      }
    }
  }
}