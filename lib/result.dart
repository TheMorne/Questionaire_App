import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome';
    } else if (resultScore <= 14) {
      resultText = 'You are likeable';
    } else if (resultScore <= 20) {
      resultText = 'You are ok';
    } else if (resultScore <= 25) {
      resultText = 'You are a bit worrying';
    } else {
      resultText = 'You need help';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart quiz?'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
