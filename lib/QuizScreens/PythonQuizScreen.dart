import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../API_Details/PythonQuiz.dart';
import '../Constructors/AnswerCard.dart';
import '../resultDetail.dart';

class PythonQuizScreen extends StatefulWidget {
  const PythonQuizScreen({super.key});

  @override
  State<PythonQuizScreen> createState() => _PythonQuizScreenState();
}

class _PythonQuizScreenState extends State<PythonQuizScreen> {
  int seconds = 20;
  Timer? timer;
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;
  Color progressColor = Colors.white; // Default color

  // void refreshQuestion() {
  //   setState(() {
  //     questions.shuffle();
  //   });
  // }

  void pickAnswer(int value) {
    selectedAnswerIndex = value;
    final question = questions[questionIndex];
    if (selectedAnswerIndex == question.correctAnswerIndex) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex < questions.length - 1) {
      questionIndex++;
      selectedAnswerIndex = null;
      startTimer();
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  startTimer() {
    timer?.cancel(); // Cancel previous timer if any
    seconds = 20; // Reset the seconds for each question
    progressColor = Colors.white; // Reset color to white
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
          // Check if remaining time is 5 seconds or less
          if (seconds <= 10) {
            // Change color to red
            progressColor = Colors.red;
          } else {
            // Change color back to white
            progressColor = Colors.white;
          }
        } else {
          timer.cancel(); // Stop the timer when time runs out
          goToNextQuestion();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[questionIndex];
    bool isLastQuestion = questionIndex == questions.length - 1;
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xff060870),
        // Change the status bar color
        statusBarIconBrightness: Brightness.light,
        // Change the status bar icons' color
        systemNavigationBarColor: Color(0xff060870),
        systemNavigationBarDividerColor: Color(0xff000000),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: double.infinity,
                  // fill_parent
                  height: MediaQuery.of(context).size.height,
                  // fill_parent
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff886ff2),
                        Color(0xff6840ff),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    children: [
                      // Back Icon & Vertical Right option
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                MdiIcons.keyboardBackspace,
                                size: 40,
                                weight: 50,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Text(
                                '$seconds',
                                // Converting integer to string explicitly
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: CircularProgressIndicator(
                                  value: seconds / 20.0,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      progressColor),
                                ),
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: PopupMenuButton(
                              elevation: 15,
                              tooltip: "Settings",
                              splashRadius: 15.0,
                              surfaceTintColor: Colors.pink,
                              icon: Icon(
                                MdiIcons.tuneVertical,
                                size: 40,
                                weight: 50,
                                color: Colors.white,
                              ),
                              itemBuilder: (BuildContext context) => [
                                PopupMenuItem(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                  value: 0,
                                  child: const Text('Refresh'),
                                  onTap: () {
                                    startTimer();
                                    // refreshQuestion();
                                  },
                                ),
                                const PopupMenuItem(
                                  value: 1,
                                  child: Text('Exit'),
                                ),
                              ],
                              onSelected: (value) {
                                if (value == 0) {
                                  // refreshQuestion();
                                  startTimer();
                                } else if (value == 1) {
                                  Navigator.pushReplacementNamed(context, "/Home");
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(
                                text:
                                    "Question ${questionIndex + 1} of ${questions.length}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: question.question,
                                // questions[questionIndex].question,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 50,
                          ),

                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: question.answers.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: selectedAnswerIndex == null
                                    ? () => pickAnswer(index)
                                    : null,
                                child: AnswerCard(
                                  currentIndex: index,
                                  answers: question.answers[index],
                                  isSelected: selectedAnswerIndex == index,
                                  selectedAnswerIndex: selectedAnswerIndex,
                                  correctAnswerIndex:
                                      question.correctAnswerIndex,
                                ),
                              );
                            },
                          ),

                          const SizedBox(
                            height: 40,
                          ),

                          // Next Button & Finish Button

                          isLastQuestion
                              ? SizedBox(
                                  width: 150.0,
                                  height: 70,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      selectedAnswerIndex != null
                                          ? Navigator.of(context)
                                              .pushReplacement(
                                              MaterialPageRoute(
                                                builder: (_) => ResultScreen(
                                                  score: score,
                                                ),
                                              ),
                                            )
                                          : null;
                                    },
                                    child: const Text(
                                      "Finish",
                                      style: TextStyle(
                                        letterSpacing: 2,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                )
                              : SizedBox(
                                  width: 150.0,
                                  height: 70,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      selectedAnswerIndex != null
                                          ? goToNextQuestion()
                                          : null;
                                    },
                                    child: const Center(
                                      child: Text(
                                        "Next",
                                        style: TextStyle(
                                          letterSpacing: 2,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
