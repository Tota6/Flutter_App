// ignore_for_file: deprecated_member_use

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhases {
    String resultText;
    if (resultScore <= 8) {
      resultText = "you are awesome";
    } else if (resultScore <= 12) {
      resultText = "pretty";
    } else if (resultScore <= 16) {
      resultText = "you are ... strange";
    } else {
      resultText = "you are very bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhases,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart quize',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
