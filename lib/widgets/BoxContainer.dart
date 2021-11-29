import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  BoxContainer({required this.color, required this.boxContent});

  final Color color;
  final Widget boxContent;

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
