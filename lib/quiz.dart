import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

//quiz class, which extends with statelesswidge class
class Quiz extends StatelessWidget {
  //variable defind
  final List<Map<String, Object>> questions;
  final int questionNumber;
  final Function answerQuestion;

//constructor of above mentioned variable
// i used required keyword here because those all value needed compulsory
  Quiz(
      {required this.answerQuestion,
      required this.questionNumber,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionNumber]['questionText']
              as String, //?.toString() ?? '',
        ),
        ...(questions[questionNumber]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
