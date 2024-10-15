import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final int score; // Assuming you pass the score to the ResultScreen

  // Constructor to receive the score
  ResultScreen({Key? key, required this.score}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Results'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Score',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20), // Space between text and score
              Text(
                '${widget.score}', // Display the score
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.green, // Color for the score
                ),
              ),
              SizedBox(height: 40), // Space between score and buttons
              ElevatedButton(
                onPressed: () {
                  // Navigate back to the quiz
                  Navigator.pop(context);
                },
                child: Text('Back to Quiz'),
              ),
              SizedBox(height: 20), // Space between buttons
              ElevatedButton(
                onPressed: () {
                  // Restart the quiz (implement your logic here)
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Text('Restart Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
