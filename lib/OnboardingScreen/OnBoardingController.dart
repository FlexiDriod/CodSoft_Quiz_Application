import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'FirstPage.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';

// Create a controller for managing the state
class OnboardingController extends GetxController {
  LiquidController liquidController = LiquidController();
  RxInt currentPage = 0.obs;

  List<Widget> pages = [
    const FirstPage(),
    const SecondPage(),
    const ThirdPage(),
  ];

  void onPageChangeCallBack(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  skip() => liquidController.jumpToPage(page: 2);

  animateToNextSlide() {
    var nextPage = currentPage.value + 1;
    if (nextPage < pages.length) {
      liquidController.animateToPage(page: nextPage, duration: 500);
    } else {
      Get.offAllNamed("/Home");
    }
  }
}
