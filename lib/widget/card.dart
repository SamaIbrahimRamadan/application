import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  Widget child;
  double width, height;
  CustomCard(
      {super.key,
      required this.child,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            width: width,
            height: height,
            child: Card(
                elevation: 5,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: child)));
  }
}
