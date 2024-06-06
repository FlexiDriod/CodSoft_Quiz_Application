import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent.shade400,
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
              image: const AssetImage("assets/quizOnboard1.png"),
              fit: BoxFit.cover,
              isAntiAlias: true,
              filterQuality: FilterQuality.high,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: Get.width,
            child: Center(
              child: RichText(
                text: const TextSpan(
                    text: "Get ready to be a coding encyclopedia!",
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
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text:
                      "We have assembled a powerhouse of MCQs on\nall the popular programming languages,\nincluding JAVA, C++, PYTHON, PHP, etc.\n\nwe're here to challenge your intellect and ignite your competitive spirit. Step up, answer swiftly, and show the world your coding prowess!",
                  style: TextStyle(
                    height: 1.3,
                    letterSpacing: 1.0,
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
