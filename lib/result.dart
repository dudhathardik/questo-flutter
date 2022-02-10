import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback selectRestart;
  Result(this.resultScore, this.selectRestart);

  String get resultPhrase {
    String resultText;
    if (resultScore < 30) {
      resultText = 'you are awsome';
    } else if (resultScore < 60) {
      resultText = 'you are good';
    } else if (resultScore < 100) {
      resultText = 'you are strange';
    } else {
      resultText = 'you are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 81, 121, 141),
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart'),
            onPressed: selectRestart,
          ),
        ],
      ),
    );
  }
}
