import 'package:flutter/material.dart';
import 'package:bmi_calculator/Input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(color: Colors.black),
        secondaryHeaderColor: Colors.blue,
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        // floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.grey),

      ),
      home: InputPage(),
    );
  }
}

