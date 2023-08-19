import 'package:flutter/material.dart';

class RowText extends StatelessWidget {
  String text1, text;
  void Function() onPressed;
  RowText(
      {super.key,
      required this.text,
      required this.text1,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: const TextStyle(
              color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
        ),
        CustomTextButton(onPressed: onPressed, text: text, color: Colors.black),
      ],
    );
  }
}

class CustomTextButton extends StatelessWidget {
  String text;
  void Function() onPressed;
  Color color;
  CustomTextButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style:
            TextStyle(color: color, fontSize: 19, fontWeight: FontWeight.bold),
      ),
    );
  }
}
