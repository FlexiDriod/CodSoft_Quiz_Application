import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'SplashController.dart';

class SplashScreen extends StatelessWidget {
  final dynamic showOnboarding;

  const SplashScreen({super.key, required this.showOnboarding});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(showOnboarding: showOnboarding),
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffF1B38F), Color(0xffB35F61)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                      child: Image(
                    image: AssetImage("assets/quiz-icon.png"),
                    filterQuality: FilterQuality.high,
                  )),
                  SizedBox(
                    height: 60,
                  ),
                  CircularProgressIndicator(
                    backgroundColor: Colors.grey,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xfff50057)),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
