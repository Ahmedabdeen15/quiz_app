import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.data,{super.key});
  final data;
  @override
  Widget build(BuildContext context) {
    return Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'].toString(),
                          style: const TextStyle(
                            fontSize: 17.0,
                            fontFamily: AutofillHints.addressCity,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['user_answer'].toString(),
                          style: TextStyle(
                            fontSize: (data['user_answer'].toString() ==
                                    data['correct_answer'].toString())
                                ? 0
                                : 16,
                            fontFamily: AutofillHints.addressCity,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 248, 37, 37),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['correct_answer'].toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: AutofillHints.addressCity,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 35, 243, 46),
                          ),
                        ),
                      ],
                    ),
                  );
  }
}
