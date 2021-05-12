import 'package:flutter/material.dart';
import 'package:bmi_cal/Inputpage.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF111539),
        primaryColor: Color(0xFF111539),
        appBarTheme: AppBarTheme(centerTitle:true),
      ),   // To set bgcolor
      home: InputPage(),
    );
  }
}

