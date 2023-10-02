import 'package:flutter/material.dart';
import 'package:quiz_game/components/questions_home.dart';

import '../components/title_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool willPlay = false;

  void startButtonClicked(bool action) {
    setState(() {
      willPlay = action;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.centerLeft,
            begin: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.white70,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: willPlay
                ? QuestionHome(startButtonClicked)
                : TitleHome(startButtonClicked),
          ),
        ),
      ),
    );
  }
}
