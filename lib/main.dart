import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'input_screen.dart';
import 'result_screen.dart';

void main() => runApp(BMICalculatorApp());

class BMICalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/input': (context) => InputScreen(),
        '/result': (context) => ResultScreen(),
      },
    );
  }
}
