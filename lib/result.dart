import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function restartHandler;

  Result(this.finalScore, this.restartHandler);

  String get getFeedback {
    String feedback = "You have scored $finalScore/30";

    return feedback;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Center(
          child: Text(
            getFeedback,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          onPressed: restartHandler,
          child: Text("Restart Quiz"),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
