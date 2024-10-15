// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sharafat_hassan/all_quiz_data.dart';
import 'package:sharafat_hassan/practice.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:sharafat_hassan/result_screen.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final CountDownController _controller = CountDownController();
  int index = 0;
  int quiz_score = 0;
  bool isNavigating = false;
  int? selected_answer_index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text('${index + 1} / 10'),
            SizedBox(height: 50),
            Text(
              all_quiz[index].question,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 50),
            CircularCountDownTimer(
              width: 65.0,
              height: 65.0,
              duration: 5,
              fillColor: Colors.pink,
              ringColor: Colors.grey,
              backgroundColor: Colors.amber,
              controller: _controller,
              onComplete: moveToNextQuestion, // Correctly handle onComplete
            ),
            SizedBox(height: 50),
            Container(
              height: 350,
              child: ListView.builder(
                itemCount: all_quiz[index].ans_list.length,
                itemBuilder: (context, answer_index) {
                  return InkWell(
                    onTap: () {
                      selected_answer_index = answer_index;
                      print('value found');
                      if (all_quiz[index]
                          .ans_list[selected_answer_index!]
                          .iscorrect) {
                        setState(() {
                          quiz_score++;

                          // Update score if the answer is correct
                        });
                        print('Correct answer! Score: $quiz_score');
                      } else {
                        print('Wrong answer');
                      }
                    },
                    child: MyWidget(
                      quiz_value: all_quiz[index].ans_list[answer_index].answer,
                      iscorrect:
                          all_quiz[index].ans_list[answer_index].iscorrect,
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                moveToNextQuestion();
              },
              child: Text('Next'),
            )
          ],
        ),
      ),
    );
  }

  void moveToNextQuestion() async {
    if (index < all_quiz.length - 1 && !isNavigating) {
      setState(() {
        isNavigating = true; // Prevent double navigation
      });

      // Move to the next question
      setState(() {
        index++; // Increment the index for the next question
        _controller.restart(duration: 5); // Restart the countdown timer
        selected_answer_index =
            null; // Reset the selected answer for the next question
        isNavigating = false; // Reset the navigation flag
      });

      await Future.delayed(Duration(seconds: 2));
    } else if (index == all_quiz.length - 1) {
      // If this is the last question, navigate to the result screen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            score: quiz_score, // Pass the final score to the result screen
          ),
        ),
      );
    }
  }
}
