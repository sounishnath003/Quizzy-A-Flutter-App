import 'package:flutter/material.dart';
import './utils/question.dart';
import './utils/quiz.dart';
import './UI/answer_button.dart';

class QuizPage extends StatefulWidget {
  final Widget child;

  QuizPage({Key key, this.child}) : super(key: key);

  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new AnswerButton(true),
            new AnswerButton(false),
          ],
        ),
      ],
    );
  }
}