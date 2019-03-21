import 'package:flutter/material.dart';
import 'dart:math';

class RightWrongOverlay extends StatefulWidget {

  final bool _isCorrect ;
  final VoidCallback _onTap ;

  RightWrongOverlay(this._isCorrect, this._onTap);

  _RightWrongOverlayState createState() => _RightWrongOverlayState();
}

class _RightWrongOverlayState extends State<RightWrongOverlay> with SingleTickerProviderStateMixin {

  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController ;

  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
      duration: new Duration(
        seconds: 2,
      ),
      vsync: this
    );

    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.elasticOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
    }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _iconAnimationController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.black54,
      child: new InkWell(
        onTap: () => widget._onTap(),
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
              child: new Transform.rotate(
                child : new Icon(  widget._isCorrect == true ?  Icons.done : Icons.clear,
              size: _iconAnimation.value * 66.0,
              color: Colors.black,
              ),
              angle: _iconAnimation.value * 2 * pi,
              )
            ),
            new Padding(
              padding: new EdgeInsets.only(
                bottom: 18.0,
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