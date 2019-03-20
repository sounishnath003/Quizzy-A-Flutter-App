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

  Question currentQuestion;
  Quiz quiz = new Quiz([
    new Question("Flutter is awesome ?", true),
    new Question("Pizza is awesome",  true),
    new Question("Tajmahal is in India", true),
    new Question("Instagram is a pornsite", false),
    new Question("Bro do you even <code/>", true),
    new Question("Vue is a progessive javascript", true),
    new Question("This is an application", false),
    new Question("Vs code is a IDE", false),
    new Question("Rails is a programming language", false),
    new Question("Ruby is not a OOPs", false),
    new Question("C# is a language od DOT.net", false)
  ]);

  String questionText ;
  int questionNumber ;
  bool isCorrect ;
  bool overlayShouldBeVisible = false ;

  @override
  void initState() {
    super.initState();

    currentQuestion =quiz.nextQuestion;
    questionText =currentQuestion.question;
    questionNumber =quiz.questionNumber;
  }


void handleAnswer(bool answer) {
  isCorrect = (currentQuestion.answer == answer);
  quiz.answer(isCorrect);
  this.setState(() => {
    overlayShouldBeVisible = true
  });
}


  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          children: <Widget>[
            new AnswerButton(true, () => handleAnswer(true)),
            new QuestionText(questionText, questionNumber),
            new AnswerButton(false, () => handleAnswer(false)),
          ],
        ),
      overlayShouldBeVisible == true ?   new RightWrongOverlay(
        isCorrect,
       () {
         currentQuestion = quiz.nextQuestion;
         this.setState(() {
           overlayShouldBeVisible =false;
           questionText =currentQuestion.question;
           questionNumber = quiz.questionNumber;
         });
       }
      ) : new Container() ,
      ],
    );
  }
}