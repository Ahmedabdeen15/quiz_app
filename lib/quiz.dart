import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/questions_summary/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start-screen";
  List<String> selectedAnswer = [];
  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chosenAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = "result-screen";
      });
    }
  }

  void restartQuestions() {
    setState(() {
      selectedAnswer = [];
      activeScreen = "question-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = StartScreen(switchScreen);
    if (activeScreen == "question-screen") {
      currentScreen = QuestionsScreen(chooseAnswer: chosenAnswer);
    }
    if (activeScreen == "result-screen") {
      currentScreen = ResultScreen(
          listOfAnswer: selectedAnswer, startQuiz: restartQuestions);
    }
    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 72, 19, 163),
        Color.fromARGB(255, 110, 82, 158),
        Color.fromARGB(255, 149, 117, 204)
      ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
      child: currentScreen,
    )));
  }
}
