// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xf537bd87),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
          ),
          SizedBox(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Image(
              width: MediaQuery.of(context).size.width,
              image: const AssetImage("assets/quizOnboard2.png"),
              fit: BoxFit.cover,
              isAntiAlias: true,
              filterQuality: FilterQuality.high,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: RichText(
                text: const TextSpan(
                    text: "Your progress matters to us!\n",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 22.0,
                    )),
              ),
            ),
          ),
          /* */
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 45.0, right: 45.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text:
                          "Our app takes you to the next level\nby providing you with comprehensive feedback on your performance.\n\nOur app believes in providing you with comprehensive results that offer a deep dive into your quiz performance.",
                      style: TextStyle(
                        height: 1.3,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
