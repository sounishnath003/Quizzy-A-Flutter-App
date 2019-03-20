import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {
  final String _question;
  final int _questionNumber;

  QuestionText(this._question, this._questionNumber);

  _QuestionTextState createState() => _QuestionTextState();
}

class _QuestionTextState extends State<QuestionText> {
  @override
  Widget build(BuildContext context) {
    return new Material(
              color: Colors.white,
              child: Container(
                padding: new EdgeInsets.all(36.0),
                child: new Center(
                  child: new Text("Question No " + widget._questionNumber.toString() + " : " + widget._question,
                  style: new TextStyle(
                    fontSize: 16.0,
                  )
                  ),
                ),
              ),
            );
  }
}


