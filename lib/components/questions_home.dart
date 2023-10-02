import 'package:flutter/material.dart';
import 'package:quiz_game/data/questionnaire.dart';

class QuestionHome extends StatefulWidget {
  const QuestionHome(this.startButtonClicked, {super.key});

  final Function(bool) startButtonClicked;

  @override
  State<QuestionHome> createState() => _QuestionHomeState();
}

class _QuestionHomeState extends State<QuestionHome> {
  int currentItem = 0;
  int score = 0;
  bool gameFinished = false;

  void checkAnswer(String? answer) {
    // if (answer == answers[currentItem]) {
    //   score++;
    // }
    // setState(() {
    //   if (currentItem < answers.length - 1) {
    //     currentItem++;
    //   } else {
    //     setState(() {
    //       gameFinished = true;
    //     });
    //   }
    // });
    print(answer);
  }

  Widget showQuestion() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${currentItem + 1}). ${riddleQuestions[currentItem]['question']!}",
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(240, 0, 0, 0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: makeButtons(0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                widget.startButtonClicked(false);
              },
              child: Text("Back to home"),
            ),
          ),
          Text("Score: $score"),
        ],
      ),
    );
  }

  Widget showScore() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("You scored.."),
        Text("$score"),
        OutlinedButton(
          onPressed: () {
            widget.startButtonClicked(false);
          },
          child: Text("Next Round"),
        )
      ],
    );
  }

  // this function should return a 4 buttons
  List<Widget> makeButtons(int currItem) {
    List<Widget> buttons = [];
    int counter = 0;
    int choiceCounter = 0;

    while (true) {
      if (counter == 4) break;
      counter++;

      buttons.add(Container(
        margin: EdgeInsets.only(bottom: 5),
        child: OutlinedButton(
          onPressed: () {
            checkAnswer(riddleQuestions[currItem][choiceCounter]);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              riddleQuestions[currItem][choiceCounter++]!,
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ));
    }
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: gameFinished ? showScore() : showQuestion()),
    );
  }
}
