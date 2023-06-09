

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz);

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(132, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text("Learn Flutter the fun way!"),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start Quiz",
                  style: TextStyle(
                    color: Colors.white,
                  )))
        ],
      ),
    );
  }
}