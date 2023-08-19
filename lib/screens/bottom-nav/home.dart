import 'package:application/setting/size.dart';
import 'package:flutter/material.dart';

import '../../res.dart';
import '../../setting/const.dart';
import '../../widget/custom-market.dart';
import '../../widget/meal.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      50.h,
      Image.asset(Res.meal),
      GridView.count(
          mainAxisSpacing: 1,
          crossAxisSpacing: 2,
          childAspectRatio: 1.1 / 1.6,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          children: List.generate(
            products.length,
            (index) => CustomMarket(
              img: products[index]['image'],
              name: products[index]['name'],
              price: products[index]['price'].toString(),
              height: 150,
            ),
          )),
      GridView.count(
        mainAxisSpacing: 1,
        crossAxisSpacing: 2,
        childAspectRatio: 1.1 / 1.6,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        children: [
          CustomMeal(
            text: "Classic Hamburger",
            price: 'Price:350EGP',
            image:
                'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
          ),
          CustomMeal(
            text: "Wiener Schnitzel",
            price: 'Price:200EGP',
            image:
                'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
          ),
          CustomMeal(
            text: "Toast Hawaii",
            price: 'Price:150EGP',
            image:
                'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
          ),
          CustomMeal(
            text: "Spaghetti",
            price: 'Price:250EGP',
            image:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
          ),
        ],
      )
    ]));
  }
}
