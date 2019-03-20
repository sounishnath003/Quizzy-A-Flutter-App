import 'package:flutter/material.dart';
import './landing_code.dart';
import './quiz_page.dart';
import './UI/answer_button.dart';

Color primary_Color = const Color.fromRGBO(3, 54, 255,1);
Color scaffold_back_color = const Color.fromRGBO(250, 22 ,3, 1);

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new LandingPage(),
  ));
}
