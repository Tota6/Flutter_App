import 'dart:convert';
import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quize extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function() answerQuestion;

  Quize(
      {required this.questions,
      required this.questionIndex,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Question(
          questions[questionIndex]["questionText"] as String,
        ),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answers) {
          return Answer(() => answerQuestion(answers["score"]),
              answers['text'] as String);
        }).toList()
      ],
    ));
  }
}
