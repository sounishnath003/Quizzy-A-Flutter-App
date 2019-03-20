import 'package:flutter/material.dart';

class RightWrong extends StatefulWidget {



  _RightWrongState createState() => _RightWrongState();
}

class _RightWrongState extends State<RightWrong> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.black54,
      child: new InkWell(
        onTap: () => debugPrint("you tapped the overlay"),
        child: new Column(
          children: <Widget>[
            new Container(
              child: new Icon(Icons.),
            ),
            new Text("Correct ...! "),
          ],
        ),
      ),
    );
  }
}