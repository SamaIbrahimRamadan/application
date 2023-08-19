import 'package:application/setting/size.dart';
import 'package:flutter/cupertino.dart';

import '../../setting/const.dart';

class CustomWidgetOnBoarding extends StatelessWidget {
  Model model;

  CustomWidgetOnBoarding({super.key, required this.model});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(model.img),
          20.h,
          Text(
            model.name,
            style: const TextStyle(fontSize: 24, color: color),
          )
        ],
      ),
    );
  }
}

class Model {
  String img, name;
  Model({required this.img, required this.name});
}
