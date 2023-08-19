import 'package:application/screens/auth/login.dart';
import 'package:application/setting/const.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widget/auth/boarding-widget.dart';
import '../../widget/auth/row-text.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  bool isLast = false;
  var controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            CustomTextButton(
                onPressed: () {
                  navigator(context, const MyHomePage());
                },
                text: 'Skip',
                color: color),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: PageView.builder(
              controller: controller,
              onPageChanged: (int index) {
                if (index == onBoardingList.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                }
              },
              itemBuilder: (context, index) =>
                  CustomWidgetOnBoarding(model: onBoardingList[index]),
            )),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  SmoothPageIndicator(
                    controller: controller,
                    count: onBoardingList.length,
                    effect: const ExpandingDotsEffect(
                        dotColor: Colors.grey,
                        spacing: 5,
                        expansionFactor: 3,
                        dotHeight: 10,
                        activeDotColor: color),
                  ),
                  const Spacer(),
                  FloatingActionButton(
                      backgroundColor: color,
                      child: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        if (isLast) {
                          navigator(context, const MyHomePage());
                        } else {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 750),
                              curve: Curves.fastLinearToSlowEaseIn);
                        }
                      })
                ],
              ),
            )
          ],
        ));
  }
}
