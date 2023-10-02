import 'package:flutter/material.dart';
import 'package:quiz_game/screens/homescreen.dart';
// import 'package:quiz_game/screens/startGame.dart';

void main() {
  runApp(const QuizGame());
}

bool gameStart = false;

class QuizGame extends StatelessWidget {
  const QuizGame({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
