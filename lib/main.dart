import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter_application_1a/quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  static const questions = [
    {
      'questionText': 'What\'s your favorite clothes?',
      'answers': [
        {'text': 'Jeans', 'score': 10},
        {'text': 'Formal', 'score': 5},
        {'text': 'Suit', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favorite animals?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Tiger', 'score': 8},
        {'text': 'Elephant', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 5},
        {'text': 'Blue', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favorite song?',
      'answers': [
        {'text': 'Memories', 'score': 1},
        {'text': 'At my worst', 'score': 7},
        {'text': 'Laaree', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favorite place?',
      'answers': [
        {'text': 'India', 'score': 10},
        {'text': 'Germany', 'score': 9},
        {'text': 'USA', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favorite bird?',
      'answers': [
        {'text': 'Crow', 'score': 10},
        {'text': 'Sperrow', 'score': 6},
        {'text': 'Bulbul', 'score': 8},
      ],
    },
  ];
  var _questionNumber = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
       _questionNumber = 0;
       _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);

    setState(() {
      _questionNumber = _questionNumber + 1;
    });
    print(_questionNumber);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: const Text("This Flutter App"),
          ),
        ),
        body: _questionNumber < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionNumber: _questionNumber,
                questions: questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
