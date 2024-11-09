import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  void calculateBMI() {
    final double? weight = double.tryParse(weightController.text);
    final double? height = double.tryParse(heightController.text);

    if (weight != null && height != null && height > 0) {
      double bmi = weight / (height * height);
      Navigator.pushNamed(context, '/result', arguments: bmi.toStringAsFixed(2));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter valid numbers')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enter Details')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: weightController,
              decoration: InputDecoration(labelText: 'Enter Weight (kg)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: heightController,
              decoration: InputDecoration(labelText: 'Enter Height (m)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateBMI,
              child: Text('Calculate'),
            ),
          ],
        ),
      ),
    );
  }
}
