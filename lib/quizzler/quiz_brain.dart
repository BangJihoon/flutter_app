import 'package:flutter/material.dart';
import 'package:flutter_exam/quizzler/Quiz.dart';

class brain {
  List<Quiz> list = [
    Quiz('당신은 착하다', false),
    Quiz('당신은 못생겼다', true),
    Quiz('당신은 멍청하다', true),
  ];
  Icon ScoreRecord(bool answer) {
    if (answer == true)
      return (Icon(Icons.check, color: Colors.green));
    else
      return (Icon(Icons.close, color: Colors.red));
  }
}
