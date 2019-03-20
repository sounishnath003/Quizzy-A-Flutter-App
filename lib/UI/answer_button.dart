import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final bool answer;

  final VoidCallback _onTap;
  AnswerButton(this.answer, this._onTap);

  @override
  Widget build(BuildContext context) {
    return
              new Expanded(
                child: new Material(
                color: answer == true ? Colors.greenAccent : Colors.redAccent,
                child: new InkWell(
                  onTap: () => _onTap(),
                  child: new Center(
                    child: new Container(
                     padding: new EdgeInsets.all(22.0),
                      decoration: new BoxDecoration(
                        border: new Border.all(
                          color: Colors.white,
                          width: 6.0,
                          style: BorderStyle.solid,
                          ),
                      ),
                      child: new Text(answer == true ? "True" : "False",
                      style: new TextStyle(
                        fontSize: 80.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                      ),),
                    ),
                  ),
                ),
              ),
            );
          }
        }
