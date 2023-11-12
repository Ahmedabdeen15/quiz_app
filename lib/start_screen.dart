import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets\\assets\\images\\quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(131, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          Text(
            "Let's learn flutter",
            style: GoogleFonts.abhayaLibre(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}