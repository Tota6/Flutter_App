// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function()? selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
  // final Function handler;
  // Answer(this.handler);
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     width: double.infinity,
  //     child: RaisedButton(
  //       color: Color.fromARGB(255, 176, 119, 119),
  //       textColor: Colors.white,
  //       child: Text("Answer1"),
  //       onPressed: handler,
  //     ),
  //   );
  // }
}
