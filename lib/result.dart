import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;

  Result(this.finalScore);

  String get getFeedback {
    String feedback = "You have scored $finalScore/30";

    return feedback;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        getFeedback,
        style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
