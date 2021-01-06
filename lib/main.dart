import 'package:flutter/material.dart';
import 'package:quizz_app/question.dart';

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
      "What\'s your favorite color? this is to test if the text is aligned to the center",
      "What\'s your favorite animal?"
    ];

    void _answerQuestion(int num) {
      setState(() {
        if (_questionIndex < (questions.length - 1)) {
          _questionIndex++;
        } else {
          print("no more questions");
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
                RaisedButton(
                  child: Text("Option 1"),
                  onPressed: () {
                    _answerQuestion(1);
                  },
                ),
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
