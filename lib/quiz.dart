import 'package:flutter/material.dart';
import 'package:flutter_tutorial_2/questionscreen.dart';
import 'package:flutter_tutorial_2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(
      switchScreen,
    );
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 149, 102, 230),
              Color.fromARGB(255, 103, 58, 183)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: activeScreen),
      ),
    );
  }
}
