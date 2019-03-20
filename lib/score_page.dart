import 'package:flutter/material.dart';

class ScorePage extends StatelessWidget {

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
          new Text("3/10"),
          new IconButton(
            new Icon(Icons.arrow_right),
            iconSize: 48.0,
            color: Colors.white,

          ),
        ],
      ),
    );
  }
}