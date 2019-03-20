import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  bool answer;

  AnswerButton(this.answer);

  @override
  Widget build(BuildContext context) {
    return
              new Expanded(
                child: new Material(
                color: answer == true ? Colors.greenAccent : Colors.redAccent,
                child: new InkWell(
                  onTap: () => {
                    debugPrint("You answer button tapped"),
                  },
                  child: new Center(
                    child: new Container(
                      child: new Text(answer == true ? "True" : "False"),
                    ),
                  ),
                ),
              ),
            );
          }
        }