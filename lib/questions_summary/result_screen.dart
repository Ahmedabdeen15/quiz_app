import "package:flutter/material.dart";
import "package:quiz_app/data/questions.dart";
import 'package:quiz_app/questions_summary/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.listOfAnswer, required this.startQuiz});
  final List<String> listOfAnswer;
  final void Function() startQuiz;
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < listOfAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': listOfAnswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final noTotalQuestion = questions.length;
    final noCorrectQuestion = summaryData
        .where((element) => element['correct_answer'] == element['user_answer'])
        .length;

    return SizedBox(
        width: double.infinity,
        child: Container(
            margin: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "You answered $noCorrectQuestion out of $noTotalQuestion questions correctly!!",
                      style: const TextStyle(
                        fontSize: 23.0,
                        fontFamily: AutofillHints.addressCity,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 219, 169, 238),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                QuestionSummary(summaryData),
                const SizedBox(
                  height: 30,
                ),
                TextButton.icon(
                    onPressed: startQuiz,
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    icon: const Icon(Icons.restart_alt_rounded),
                    label: const Text("Restart quiz"))
              ],
            )));
  }
}
