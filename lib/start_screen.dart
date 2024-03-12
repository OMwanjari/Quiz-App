import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
        ),
        const SizedBox(height: 50),
        const Text(
          'Wanna Learn Flutter Bro!',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 72, 5, 186)),
            label: const Text("Start Quiz"),
            icon: const Icon(Icons.arrow_right_alt_rounded)),
      ],
    ));
  }
}
