import 'package:bmi_caculator/InputPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICaculator());

class BMICaculator extends StatelessWidget {
  const BMICaculator({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
