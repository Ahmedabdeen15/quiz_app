import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';
import 'package:quiz_app/questions_summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: summaryData.map((data) {
            return Row(
              children: [
                QuestionIdentifier(
                    questionIndex: data['question_index'],
                    isQuestionCorrect: data['user_answer'].toString() ==
                        data['correct_answer'].toString()),
                Expanded(
                  child: SummaryItem(data),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
