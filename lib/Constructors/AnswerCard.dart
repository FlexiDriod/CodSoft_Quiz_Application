import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.currentIndex,
    required this.answers,
    required this.isSelected,
    required this.selectedAnswerIndex,
    required this.correctAnswerIndex,
  });

  final String answers;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final bool isSelected;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    bool correctAns = currentIndex == correctAnswerIndex;
    bool wrongAns = !correctAns && isSelected;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: selectedAnswerIndex != null
          ? Container(
              height: 90,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: correctAns ? Colors.green : wrongAns ? Colors.red : Colors.red,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: correctAns
                      ? Colors.green
                      : wrongAns
                          ? Colors.red
                          : Colors.red,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child:  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: answers,
                        // questions[questionIndex].question,
                        style: const TextStyle(
                          fontFamily: 'Nunita',
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )

          // If no option is selected
          : Container(
              height: 90,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white24,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: answers,
                        // questions[questionIndex].question,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

}
