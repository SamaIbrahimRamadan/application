import 'package:application/setting/size.dart';
import 'package:flutter/material.dart';

import '../screens/bottom-nav/market.dart';

class CustomCategory extends StatelessWidget {
  ModelCategory model;
  CustomCategory({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Row(
          children: [
            Image.asset(
              model.img,
              height: 100,
            ),
            Spacer(),
            Text(
              model.name,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            50.w,
          ],
        ),
      ),
    );
  }
}
