// ignore_for_file: prefer_const_constructors

import 'package:bmi_app/result_page.dart';
import 'package:flutter/material.dart';
import 'widgets/IconContainer.dart';
import 'widgets/BoxContainer.dart';
import 'widgets/ButtonContainer.dart';
import 'bmi_functionality.dart';

const ACTIVECOLOR = Color(0xFF32335F);
const INACTIVECOLOR = Color(0xFF323341);
const BOTTOMCONTAINERHEIGHT = 100.0;
const BOTTOMCONTAINERCOLOR = 0xFFF73057;

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  Color maleColor = ACTIVECOLOR;
  Color femaleColor = ACTIVECOLOR;
  double height = 150;
  double weight = 50;
  int age = 25;
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleColor == INACTIVECOLOR) {
        maleColor = ACTIVECOLOR;
        femaleColor = INACTIVECOLOR;
      } else {
        maleColor = INACTIVECOLOR;
        femaleColor = ACTIVECOLOR;
      }
    } else {
      if (femaleColor == INACTIVECOLOR) {
        femaleColor = ACTIVECOLOR;
        maleColor = INACTIVECOLOR;
      } else {
        femaleColor = INACTIVECOLOR;
        maleColor = ACTIVECOLOR;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI App'),
        backgroundColor: Color(0xFF1A1A31),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: BoxContainer(
                      color: maleColor,
                      boxContent: IconContainer(
                        iconImage: Icons.male,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: BoxContainer(
                      color: femaleColor,
                      boxContent: IconContainer(
                        iconImage: Icons.female,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BoxContainer(
              color: ACTIVECOLOR,
              boxContent: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 24.0, color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: TextStyle(
                            fontSize: 50.0, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(fontSize: 18.0, color: Colors.grey),
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100.0,
                      max: 300.0,
                      activeColor: Color(0xFFF73057),
                      inactiveColor: Color(0xFFFFFFFF),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.roundToDouble();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BoxContainer(
                    color: ACTIVECOLOR,
                    boxContent: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: TextStyle(fontSize: 24.0, color: Colors.grey),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonContainer(
                              iconImage: Icons.horizontal_rule,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            ButtonContainer(
                              iconImage: Icons.add,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BoxContainer(
                    color: ACTIVECOLOR,
                    boxContent: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: TextStyle(fontSize: 24.0, color: Colors.grey),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonContainer(
                              iconImage: Icons.horizontal_rule,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            ButtonContainer(
                              iconImage: Icons.add,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              BMICalculator bmi = BMICalculator(weight: weight, height: height);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultPage(
                  bmi: bmi.calculateBMI(),
                  bmiResult: bmi.getResult(),
                  bmiInterpretation: bmi.getInterpretation(),
                );
              }));
            },
            child: Container(
              color: Color(BOTTOMCONTAINERCOLOR),
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: BOTTOMCONTAINERHEIGHT,
              child: Text('CALCULATE'),
            ),
          ),
        ],
      ),
    );
  }
}
