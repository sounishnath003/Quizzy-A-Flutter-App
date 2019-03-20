import 'package:flutter/material.dart';
import './utils/question.dart';
import './utils/quiz.dart';
import './UI/answer_button.dart';
import './UI/question_text.dart';
import './UI/answer_right_wrong_overlay.dart';

class QuizPage extends StatefulWidget {
  final Widget child;

  QuizPage({Key key, this.child}) : super(key: key);

  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          children: <Widget>[
            new AnswerButton(true, () => print("You answered True")),
            new QuestionText("Flutter is Awesome", 1),
            new AnswerButton(false, () => print("You answered False")),
          ],
        ),
        new RightWrongOverlay(true),
      ],
    );
  }
}