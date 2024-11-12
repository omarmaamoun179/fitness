import 'package:flutter/material.dart';

void main() {
  runApp(
    const FitnessAp(),
  );
}

class FitnessAp extends StatelessWidget {
  const FitnessAp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fitness App'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
/**
 * class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _currentStep = 1;
  final int totalSteps = 6;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  if (_currentStep > 1) _currentStep--;
                });
              },
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: 4,
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 4,
                    width: MediaQuery.of(context).size.width *
                        (_currentStep / totalSteps),
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                setState(() {
                  if (_currentStep < totalSteps) _currentStep++;
                });
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            '${_currentStep.toInt()}/$totalSteps',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 20),
        Text(
          _currentStep == 1
              ? 'Personalize Your Training'
              : 'Set Your Birthdate',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          _currentStep == 1
              ? 'Select your gender to help us tailor your workouts.'
              : 'This helps the AI trainer recommend workouts tailored to you.',
          style: TextStyle(fontSize: 14, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
 */