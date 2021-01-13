import 'package:flutter/material.dart';
import 'package:quizz_app/question.dart';

import 'answer.dart';

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

  Widget build(BuildContext context) {
    var questions = [
      {
        "question": "What\'s your favorite color?",
        "options": ["Black", "Red", "Blue", "White"]
      },
      {
        "question": "What\'s your favorite animal?",
        "options": ["Rabbit", "Elephant", "Snake", "Lion"]
      },
      {
        "question": "What\'s your favorite car?",
        "options": ["Alfa Romeo", "Audi", "BMW", "Mercedes"]
      }
    ];

    void _answerQuestion() {
      setState(() {
        if (_questionIndex < (questions.length - 1)) {
          _questionIndex++;
        } else {
          _questionIndex = 0;
        }
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Question(
                  questions[_questionIndex]["question"],
                ),
                ...(questions[_questionIndex]["options"] as List<String>)
                    .map((option) {
                  return Answer(_answerQuestion, option);
                }).toList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
