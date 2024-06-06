import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade200,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
          ),
          SizedBox(
            height: 400,
            width: Get.width,
            child: Image(
              width: Get.width,
              image: const AssetImage("assets/quizonBoard4.png"),
              fit: BoxFit.cover,
              isAntiAlias: true,
              filterQuality: FilterQuality.high,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
              width: Get.width,
              child: Center(
                child: RichText(
                  text: const TextSpan(
                      text: "Welcome TechQuizzer, future tech genius!",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        fontSize: 20.0,
                      )),
                ),
              ),
          ),
          /* */
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: "Whether you\'re a beginner or a seasoned pro,\nour quizzes will put your knowledge to the test.\n\nyou'll level up your knowledge.\nLet\'s begin this exciting journey and\nsee how high you can climb!",
                    style: TextStyle(
                      height: 1.3,
                      letterSpacing: 0.8,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
