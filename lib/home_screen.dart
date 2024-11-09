import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.fitness_center, size: 100, color: Colors.blue),
            SizedBox(height: 20),
            Text('BMI Calculator', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/input'),
              child: Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}
