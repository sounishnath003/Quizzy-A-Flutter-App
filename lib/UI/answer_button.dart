import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Widget child;

  AnswerButton({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
              new Expanded(
                child: new Material(
                color: Colors.greenAccent,
                child: new InkWell(
                  onTap: () => {
                    debugPrint("You answer button tapped"),
                  },
                  child: new Center(
                    child: new Container(
                      child: new Text("True"),
                    ),
                  ),
                ),
              ),
            );
          }
        }