import 'package:flutter/material.dart';
import 'quiz_page.dart'; // Vai ser a página principal do quiz

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaQuiz(),
    );
  }
}