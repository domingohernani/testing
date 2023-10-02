import 'package:flutter/material.dart';

class ShowScore extends StatelessWidget {
  const ShowScore(this.finalScore, {super.key});
  final int finalScore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("You scored.."),
            Text(""),
          ],
        ),
      ),
    );
  }
}
