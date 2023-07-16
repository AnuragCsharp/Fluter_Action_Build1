import 'package:bmi_calculator/Screens/FirstPage.dart';
import 'package:flutter/material.dart';
import 'Screens/input_Page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "BMI Calculator",
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(bodyColor: Colors.white,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0a0e21),
        ),
        scaffoldBackgroundColor: Color(0xFF0a0e21),

      ),
      home: FirstPage(),
    );
  }
}


