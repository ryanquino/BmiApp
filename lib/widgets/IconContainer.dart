import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  IconContainer({required this.iconImage, required this.label});

  IconData iconImage;
  String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          iconImage,
          color: Colors.white,
          size: 175,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 24.0, color: Colors.grey),
        ),
      ],
    );
  }
}
