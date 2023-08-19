import 'package:flutter/material.dart';

import '../res.dart';
import '../screens/bottom-nav/market.dart';
import '../widget/auth/boarding-widget.dart';

Color? background = Colors.grey[100];
const Color color = Colors.deepOrange;
void navigator(context, widget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

List products = [
  {
    'name': 'Dr Pepper',
    'image': Res.can1,
    'price': 'Price :25 EG',
  },
  {
    'name': 'Fanta',
    'image': Res.can2,
    'price': 'Price :5 EG',
  },
  {
    'name': 'Seven Up',
    'image': Res.seven,
    'price': 'Price :5 EG',
  },
  {
    'name': 'Pepsi',
    'image': Res.pepsii,
    'price': 'Price :5 EG',
  },
  {
    'name': 'Baby food',
    'image': Res.baby,
    'price': 'Price : 300 EGP',
  },
  {
    'name': 'Milka',
    'image': Res.milka,
    'price': 'Price:30EGP',
  },
  {
    'name': 'Dairy Milka',
    'image': Res.scolate,
    'price': 'Price:30EGP',
  },
  {
    'name': 'Candy Sweets 1k',
    'image': Res.candy,
    'price': 'Price:300EGP',
  },
  {
    'name': 'Candy Sweets 1k',
    'image': Res.candy1,
    'price': 'Price:300EGP',
  },
  {
    'name': 'Fanta',
    'image': Res.fanta,
    'price': 'Price:15EGP',
  },
  {
    'name': 'Syrup',
    'image': Res.syrup,
    'price': '  Price:180EGP',
  },
  {
    'name': 'Lays',
    'image': Res.layes,
    'price': '  Price:20EGP',
  },
  {
    'name': 'Chips',
    'image': Res.chips,
    'price': '  Price:10EGP',
  },
  {
    'name': 'Ritter',
    'image': Res.ritter,
    'price': '  Price:80EGP',
  },
  {
    'name': 'Tea ',
    'image': Res.tea,
    'price': '  Price:10EGP',
  },
  {
    'name': 'Green-Tea ',
    'image': Res.green_tea,
    'price': '  Price:40EGP',
  }
];
List<Model> onBoardingList = [
  Model(
    img: Res.img_2,
    name: 'Find Food you Love',
  ),
  Model(img: Res.img_1, name: 'Get Fastest Delivery'),
  Model(img: Res.img, name: "Live Track Your Delivery"),
];
List modelCategoryList = [
  ModelCategory(img: Res.baby_food, name: "Baby Food"),
  ModelCategory(img: Res.chips1, name: "Chips"),
  ModelCategory(img: Res.tea_coffee, name: "Tea-Coffee"),
  ModelCategory(img: Res.scolates, name: "chocolate"),
  ModelCategory(img: Res.food, name: "Cooking food"),
  ModelCategory(img: Res.sweets, name: "Sweets"),
  ModelCategory(img: Res.soda, name: "Soda"),
  ModelCategory(img: Res.syrup, name: "Syrup"),
];
