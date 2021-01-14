import 'package:flutter/material.dart';
import 'package:quizz_app/quiz.dart';
import 'package:quizz_app/result.dart';

import 'quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0, _totalScore = 0;

  final _questions = const [
    {
      "question": "What\'s your favorite car?",
      "options": [
        {"text": "Alfa Romeo", "score": 10},
        {"text": "Audi", "score": 7},
        {"text": "BMW", "score": 5},
        {"text": "Mercedes", "score": 4}
      ]
    },
    {
      "question": "What\'s your favorite color?",
      "options": [
        {"text": "Black", "score": 9},
        {"text": "Red", "score": 8},
        {"text": "Blue", "score": 10},
        {"text": "White", "score": 7}
      ]
    },
    {
      "question": "What\'s your favorite transmission?",
      "options": [
        {"text": "Manual", "score": 10},
        {"text": "Automatic", "score": 8},
        {"text": "DSG", "score": 5},
      ]
    },
  ];

  Widget build(BuildContext context) {
    void _answerQuestion(int score) {
      setState(() {
        if (_questionIndex < _questions.length) {
          _questionIndex++;
          _totalScore += score;
        }
        // else {
        //   _questionIndex = 0;
        // }
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
