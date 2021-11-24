// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Color(0xFF1A1A31),
          scaffoldBackgroundColor: Color(0xFF1A1A31),
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white),
          )),
      home: InputPage(),
    );
  }
}
