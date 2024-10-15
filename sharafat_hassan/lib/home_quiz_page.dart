import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharafat_hassan/quiz_page.dart';

class QuizStartPage extends StatelessWidget {
  const QuizStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            // Wrap the Container with Expanded
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/quiz.jpg'),
                  fit: BoxFit.cover, // This will cover the entire container
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizPage()),
                );
              },
              child: Text('Start quiz'),
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
