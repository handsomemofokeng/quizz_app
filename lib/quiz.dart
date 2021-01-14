import 'package:flutter/material.dart';
import 'package:quizz_app/answer.dart';
import 'package:quizz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Question(
              questions[questionIndex]["question"],
            ),
            ...(questions[questionIndex]["options"]
                    as List<Map<String, Object>>)
                .map((option) {
              return Answer(
                  () => answerQuestion(option["score"]), option["text"]);
            }).toList()
          ],
        ),
      ),
    );
  }
}
