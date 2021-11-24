// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const ACTIVECOLOR = 0xFF323341;
const BOTTOMCONTAINERHEIGHT = 100.0;
const BOTTOMCONTAINERCOLOR = 0xFFF73057;

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
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
                    child: BoxContainer(
                      color: Color(ACTIVECOLOR),
                      boxContent: Column(
                        children: <Widget>[
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 175,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'MALE',
                            style:
                                TextStyle(fontSize: 24.0, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: BoxContainer(
                      color: Color(ACTIVECOLOR),
                      boxContent: Column(
                        children: <Widget>[
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 175,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(fontSize: 24, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: BoxContainer(
                color: Color(ACTIVECOLOR),
                boxContent: Column(
                  children: <Widget>[
                    Icon(
                      Icons.male,
                      color: Colors.white,
                      size: 80,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: BoxContainer(
                      color: Color(ACTIVECOLOR),
                      boxContent: Column(
                        children: <Widget>[
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 80,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: BoxContainer(
                      color: Color(ACTIVECOLOR),
                      boxContent: Column(
                        children: <Widget>[
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 80,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(BOTTOMCONTAINERCOLOR),
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: BOTTOMCONTAINERHEIGHT,
            )
          ],
        ));
  }
}

class BoxContainer extends StatelessWidget {
  BoxContainer({required this.color, required this.boxContent});

  Color color;
  Widget boxContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: boxContent,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
