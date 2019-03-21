import 'package:flutter/material.dart';

class ScorePage extends StatelessWidget {

final int score ;
final int totalQuestions ;

ScorePage(this.score, this.totalQuestions);


  @override
  Widget build(BuildContext context) {
    return new Material(
      shadowColor: Colors.pinkAccent,
      color: Colors.pink,
      child: new Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        children: <Widget>[
          new Text("Your score ",
          style: new TextStyle(
            fontSize: 22.0,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 20.0),
          ),
          new Text(score.toString() +  "/" + totalQuestions.toString(),
          style: new TextStyle(
            color: Colors.white,
            fontSize: 99.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold
          ),
          ),
          new IconButton(
            icon: new Icon(Icons.play_arrow, color: Colors.white,),
            iconSize: 150.0,
          ),
        ],
      ),
    );
  }
}