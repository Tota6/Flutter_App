// ignore_for_file: deprecated_member_use, prefer_const_constructors, duplicate_ignore, avoid_print

import 'package:flutter/material.dart';
import "./question.dart";
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var questions = [
      {
        'questionText': "what is your fav color? ",
        'answer': ['Red', 'Orange', 'Green', 'Blue'],
      },
      {
        'questionText': "what's your name?",
        'answer': ['Martina', 'Mina', 'Micheal', 'Mano'],
      },
      {
        'questionText': "what's fav animal?",
        'answer': ['Cat', 'Dog', 'Rabbit', 'Monkey'],
      }
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Column(
        children: [
          Question(questions[_questionIndex]['questionText']),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ],
      ),
    ));
  }
}
