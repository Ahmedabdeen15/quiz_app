import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key,
      required this.questionIndex,
      required this.isQuestionCorrect});
  final questionIndex;
  final isQuestionCorrect;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isQuestionCorrect
              ? const Color.fromARGB(255, 108, 247, 229)
              : const Color.fromARGB(255, 247, 108, 143)),
      child: Center(
        child: Text(((questionIndex as int) + 1).toString()),
      ),
    );
  }
}
