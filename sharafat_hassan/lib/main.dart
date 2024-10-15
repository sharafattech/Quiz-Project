import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharafat_hassan/home_quiz_page.dart';
import 'package:sharafat_hassan/homepage.dart';
import 'package:sharafat_hassan/quiz_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizStartPage(),
    );
  }
}
