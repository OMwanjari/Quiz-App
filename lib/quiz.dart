import 'package:flutter/material.dart';
import 'package:flutter_tutorial_2/start_screen.dart';
import 'package:flutter_tutorial_2/result_screen.dart';
import 'package:flutter_tutorial_2/data/questions.dart';
import 'package:flutter_tutorial_2/questionscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    if (activeScreen == 'result-screen') {
      screenWidget = const ResultScreen();
    }

    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 149, 102, 230),
          Color.fromARGB(255, 103, 58, 183)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: screenWidget,
      ),
    ));
  }
}
