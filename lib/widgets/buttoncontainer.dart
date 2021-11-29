import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  ButtonContainer({required this.iconImage, required this.onPressed});

  final IconData iconImage;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(
        iconImage,
        color: Colors.white,
      ),
      onPressed: onPressed,
    );
  }
}
