// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'FirstPage.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';

// Create a controller for managing the state
class OnBoardingController {
  final LiquidController _liquidController = LiquidController();
  var currentPage = 0;

  final List<Widget> pages = [
    const FirstPage(),
    const SecondPage(),
    const ThirdPage(),
  ];

  LiquidController getLiquidController(){
    return _liquidController;
  }
  void onPageChangeCallBack(int page, Function updateState) {
    currentPage = page;
    updateState();
  }

  void skip(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/Home");
  }

  void animateToNextSlide(BuildContext context, Function updateState) {
    if (currentPage < pages.length - 1) {
      _liquidController.animateToPage(page: currentPage + 1, duration: 500);
    } else {
      Navigator.pushReplacementNamed(context, "/Home");
    }
    updateState();
  }
}
