import 'package:flutter/material.dart';

class RightWrongOverlay extends StatefulWidget {

  final bool _isCorrect ;

  RightWrongOverlay(this._isCorrect);

  _RightWrongOverlayState createState() => _RightWrongOverlayState();
}

class _RightWrongOverlayState extends State<RightWrongOverlay> {

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.black54,
      child: new InkWell(
        onTap: () => debugPrint("you tapped the overlay"),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Colors.white, Colors.white]
                )
              ),
              child: new Icon(widget._isCorrect == true ?  Icons.done : Icons.clear,
              size: 66.0,
              color: Colors.black,
              ),
            ),
            new Text(widget._isCorrect == true ?  "YOU'RE CORRECT " : "YOU'RE WRONG",
            style: new TextStyle(
              color: Colors.white,
              fontSize: 20.00,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
            ),
          ],
        ),
      ),
    );
  }
}