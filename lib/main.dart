import 'package:flutter/material.dart';
import 'screens/InputPage.dart';
import '../components/constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: kPassiveColor),
      ),
      home: InputPage(),
    );
  }
}
