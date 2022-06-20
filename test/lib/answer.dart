// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  Answer(this.handler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Color.fromARGB(255, 62, 44, 44),
        textColor: Colors.white,
        child: Text("Answer1"),
        onPressed: () => handler,
      ),
    );
  }
}
