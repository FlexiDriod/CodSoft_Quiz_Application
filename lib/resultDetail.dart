import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'API_Details/LinuxQuizApi.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.score,
  });
  final int score;

  @override
  Widget build(BuildContext context) {
    String message = ' ';
    Color? messageColor = Colors.green;
    if (score < 14) {
      message = "Oops!\nYou need to study more!";
      messageColor = Colors.redAccent[700];
    } else if (score >= 14 && score < 20) {
      message = "Not bad, keep it up!";
    } else {
      message = "Congratulations!";
    }
    return SafeArea(
      child: Scaffold(
        body: AnnotatedRegion(
          value: SystemUiOverlayStyle(
            // Change the status bar color
            statusBarIconBrightness: Brightness.light,
            // Change the status bar icons' color
            systemNavigationBarColor: Colors.black,
            //systemNavigationBarDividerColor: Colors.black87,
            systemNavigationBarIconBrightness: Brightness.light,
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.yellow,
                  Color(0xe5f58f3f)
                ], // Example gradient colors
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.redAccent[700],
                      child: IconButton(
                        onPressed: () {
                          Get.offAllNamed("/Home");
                        },
                        icon: Icon(MdiIcons.close),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Your Score: ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 25),

                //Feedback Based on Score
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: messageColor),
                    ),
                  ),
                ),
                const SizedBox(height: 80),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 250,
                      width: 250,
                      child: CircularProgressIndicator(
                        strokeWidth: 10,
                        value: score / 20,
                        color: Colors.green,
                        backgroundColor: Colors.red[500],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          score.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 80),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          '${(score / questions.length * 100).round()}%',
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 25),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
