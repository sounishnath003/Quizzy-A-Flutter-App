import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final Widget child;

  QuestionText({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Material(
              color: Colors.white,
              child: Container(
                padding: new EdgeInsets.all(36.0),
                child: new Center(
                  child: new Text("Question No !"),
                ),
              ),
            ),
  }
}