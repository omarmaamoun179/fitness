import 'package:flutter/material.dart';

void main(){
  runApp(
    FitnessAp(),
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
          title: Text('Fitness App'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}