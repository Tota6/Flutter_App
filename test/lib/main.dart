import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:test/result.dart';
import './quize.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText': "what is your fav color? ",
      'answers': [
        {Text: 'Red', 'score': "3"},
        {Text: 'Orange', 'score': "10"},
        {Text: 'Green', 'score': "1"},
        {Text: 'Blue', 'score': "5"}
      ],
    },
    {
      'questionText': "what's your name?",
      'answers': [
        {Text: 'Martina', 'score': "0"},
        {Text: 'Mina', 'score': "1"},
        {Text: 'Micheal', 'score': "5"},
        {Text: 'Mano', 'score': "7"}
      ],
    },
    {
      'questionText': "what's fav animal?",
      'answers': [
        {Text: 'Cat', 'score': "1"},
        {Text: 'Dog', 'score': "10"},
        {Text: 'Rabbit', 'score': "8"},
        {Text: 'Monkey', 'score': "3"}
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuize() {
    setState(() {
      var _questionIndex = 0;
      var _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
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
      body: _questionIndex < _questions.length
          ? Quize(
              questions: _questions,
              answerQuestion: () => _answerQuestion,
              questionIndex: _questionIndex,
            )
          : Result(_totalScore, _resetQuize),
    ));
  }
}
