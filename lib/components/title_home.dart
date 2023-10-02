import 'package:flutter/material.dart';

class TitleHome extends StatelessWidget {
  const TitleHome(
    this.startButtonClicked, {
    super.key,
  });

  final Function(bool) startButtonClicked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/brain.png', width: 250),
          const Text(
            textAlign: TextAlign.center,
            "Unlock the Secrets of the Mind with Riddles That Challenge and Delight!",
            style: TextStyle(
              color: Color.fromARGB(255, 24, 24, 24),
              fontSize: 15,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: OutlinedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                startButtonClicked(true);
              },
              child: const Text(
                "Let's Go!",
              ),
            ),
          )
        ],
      ),
    );
  }
}
