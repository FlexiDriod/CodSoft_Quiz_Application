import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'OnBoardingController.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingController obController = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        LiquidSwipe(
          pages: obController.pages,
          slideIconWidget: const Icon(Icons.arrow_back_ios, size: 30),
          enableSideReveal: true,
          positionSlideIcon: 0.7,
          liquidController: obController.liquidController,
          onPageChangeCallback: obController.onPageChangeCallBack,
        ),

        // Arrow Button
        Positioned(
          bottom: 60,
          child: OutlinedButton(
            onPressed: () => obController.animateToNextSlide(),
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.black12),
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
              foregroundColor: Colors.white,
              elevation: 30.0,
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0xff272727),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
        // Skipped Button
        Positioned(
            top: Get.height * 0.03,
            right: 20,
            child: TextButton(
              onPressed: () => obController.skip(),
              child: const Text(
                "Skip",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
            )),
        //Animated Dots Indicator
        Obx(
          () => Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: obController.currentPage.value,
              count: obController.pages.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.limeAccent,
                dotColor: Colors.black26,
                dotHeight: 10.0,
                dotWidth: 10.0,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
