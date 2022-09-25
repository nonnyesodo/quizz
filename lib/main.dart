import 'package:flutter/material.dart';
import 'package:quizz/ui/quiz.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz',
      home: Quiz(),
    ),
  );
}
