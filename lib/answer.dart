import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  final String option;

  Answer(this.selectHandler, this.option);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(option),
        onPressed: selectHandler,
      ),
    );
  }
}
