import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {
  final String _question;
  final int _questionNumber;

  QuestionText(this._question, this._questionNumber);

  _QuestionTextState createState() => _QuestionTextState();
}

class _QuestionTextState extends State<QuestionText> with TickerProviderStateMixin {

  Animation<double> _fontSizeAnimation;
  AnimationController _fontSizeAnimationController ;

  void initState() {
    super.initState();
    _fontSizeAnimationController = new AnimationController(
      duration: new Duration(
        milliseconds: 600,
      ),
      vsync: this
      );
      _fontSizeAnimation = new CurvedAnimation(
        parent: _fontSizeAnimationController,
        curve: Curves.bounceOut
      );
      _fontSizeAnimation.addListener(() => this.setState(() => {}
      ));
      _fontSizeAnimationController.forward() ;
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
              color: Colors.white,
              child: Container(
                padding: new EdgeInsets.all(36.0),
                child: new Center(
                  child: new Text("Question No " + widget._questionNumber.toString() + " : " + widget._question,
                  style: new TextStyle(
                    fontSize: _fontSizeAnimation.value*18,
                    fontWeight: FontWeight.bold,
                  )
                  ),
                ),
              ),
            );
  }
}


