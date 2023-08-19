import 'package:flutter/material.dart';

class CustomMarket extends StatelessWidget {
  String name, price, img;
  double height;
  CustomMarket(
      {super.key,
      required this.name,
      required this.img,
      required this.price,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              img,
              height: height,
            ),
            FittedBox(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            FittedBox(
              child: Text(
                price,
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
