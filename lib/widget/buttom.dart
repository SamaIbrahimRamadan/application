import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color color, color1;
  final double horizontal, fontSize;
  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.color,
      required this.horizontal,
      required this.fontSize,
      required this.color1});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: horizontal, vertical: 15)),
          backgroundColor: MaterialStatePropertyAll(color),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, color: color1),
        ));
  }
}
