import 'package:application/setting/size.dart';
import 'package:flutter/material.dart';

import '../../setting/const.dart';

class Market extends StatelessWidget {
  const Market({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: modelCategoryList.length,
        itemBuilder: (context, index) =>
            CustomCategory(model: modelCategoryList[index]));
  }
}

class ModelCategory {
  String img;
  String name;
  ModelCategory({required this.img, required this.name});
}

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
