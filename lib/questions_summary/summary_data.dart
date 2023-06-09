import 'package:flutter/material.dart';

class SummaryData extends StatelessWidget {
  const SummaryData({required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.zero,
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: (data['correct_answer'] == data['user_answer'])
                          ? Colors.green
                          : Colors.red,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text((data['question'] as String),
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Visibility(
                      visible: (data['user_answer'] != data['correct_answer']),
                      child: Text(
                        (data['user_answer'] as String),
                        style: TextStyle(
                            color:
                                (data['user_answer'] == data['correct_answer'])
                                    ? Colors.lightBlue
                                    : Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      (data['correct_answer'] as String),
                      style: const TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}