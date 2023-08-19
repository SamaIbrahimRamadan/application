import 'package:flutter/material.dart';

class CustomMeal extends StatelessWidget {
  String text, image, price;

  CustomMeal(
      {super.key,
      required this.text,
      required this.image,
      required this.price});
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                image,
                width: 150,
                height: 100,
              ),
            ),
            FittedBox(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
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
