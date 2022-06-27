// ignore_for_file: deprecated_member_use, prefer_const_constructors, duplicate_ignore, avoid_print

import 'dart:convert';
import 'package:flutter/material.dart';
import "./question.dart";
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': "what is your fav color? ",
      'answers': ['Red', 'Orange', 'Green', 'Blue'],
    },
    {
      'questionText': "what's your name?",
      'answers': ['Martina', 'Mina', 'Micheal', 'Mano'],
    },
    {
      'questionText': "what's fav animal?",
      'answers': ['Cat', 'Dog', 'Rabbit', 'Monkey'],
    }
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print("we have more questions");
    } else {
      print(" No more question ");
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: _questionIndex < questions.length
          ? Column(
              children: [
                Question(
                  jsonEncode(questions[_questionIndex]["questionText"]),
                ),
                ...(questions[_questionIndex]["answers"] as List<String>)
                    .map((answers) {
                  return Answer(_answerQuestion, answers);
                }).toList()
              ],
            )
          : Center(
              child: Text("you did it !"),
            ),
    ));
  }
}
