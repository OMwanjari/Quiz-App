import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: summaryData.map((data) {
      return Container(
        margin: const EdgeInsets.all(5),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                ((data['questionIndex'] as int) + 1).toString(),
                textAlign: TextAlign.start,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (data['question']).toString(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text((data['user_answer']).toString()),
                  Text((data['correct_answer']).toString()),
                ],
              ),
            )
          ],
        ),
      );
    }).toList());
  }
}
