import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bmi = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text('Your BMI Result')),
      body: Center(
        child: Text(
          'Your BMI is $bmi',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
