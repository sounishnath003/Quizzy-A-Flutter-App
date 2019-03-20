import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.greenAccent,
      child: new InkWell(
        onTap: () {
          debugPrint("We tapped the page");
        },
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Let's Quiz", style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
            )),
            new Text("Tap to start",
            style: new TextStyle(
              fontSize: 38.0,
              fontWeight: FontWeight.bold
            ))
          ],
        ),
      ),
    );
  }
}