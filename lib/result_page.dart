// ignore_for_file: prefer_const_constructors

import 'package:bmi_app/widgets/BoxContainer.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmi,
      required this.bmiResult,
      required this.bmiInterpretation});

  final double bmi;
  final String bmiResult;
  final String bmiInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Text(
              'Your Results',
              style: TextStyle(fontSize: 48.0, color: Colors.white),
            ),
          ),
          Expanded(
            flex: 10,
            child: BoxContainer(
              color: Color(0xFF32335F),
              boxContent: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResult,
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.green,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: TextStyle(
                        fontSize: 64.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    bmiInterpretation,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: Color(0xFFF73057),
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 100.0,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
