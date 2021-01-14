import 'package:flutter/material.dart';
import 'package:quizz_app/quiz.dart';

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
  int _questionIndex = 0;

  final _questions = const [
    {
      "question": "What\'s your favorite color?",
      "options": ["Black", "Red", "Blue", "White"]
    },
    {
      "question": "What\'s your favorite animal?",
      "options": ["Rabbit", "Elephant", "Lion", "Snake"]
    },
    {
      "question": "What\'s your favorite car?",
      "options": ["Alfa Romeo", "Audi", "BMW", "Mercedes"]
    }
  ];

  Widget build(BuildContext context) {
    void _answerQuestion() {
      setState(() {
        if (_questionIndex < _questions.length) {
          _questionIndex++;
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
            : Center(
                child: Text("All done!"),
              ),
      ),
    );
  }
}
