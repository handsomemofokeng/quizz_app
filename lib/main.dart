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
      "What\'s your favorite color?",
      "What\'s your favorite animal?",
      "What\'s your favorite car?",
    ];

    void _answerQuestion(int num) {
      setState(() {
        if (_questionIndex < (questions.length - 1)) {
          _questionIndex++;
        } else {
          _questionIndex = 0;
        }
      });
      print("Option $num selected");
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
                  questions[_questionIndex],
                ),
                Answer(),
                RaisedButton(
                  child: Text("Option 2"),
                  onPressed: () {
                    _answerQuestion(2);
                  },
                ),
                RaisedButton(
                  child: Text("Option 3"),
                  onPressed: () {
                    _answerQuestion(3);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
