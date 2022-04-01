import 'package:flutter_exam/week3/quizzler/Quiz.dart';

class Quiz_Brain {
  int _quizNum = 0;

  List<Quiz> _list = [
    Quiz('Some cats are actually allergic to humans', true),
    Quiz('You can lead a cow down stairs but not up stairs.', false),
    Quiz('Approximately one quarter of human bones are in the feet.', true),
    Quiz('A slug\'s blood is green.', true),
    Quiz('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Quiz('It is illegal to pee in the Ocean in Portugal.', true),
    Quiz('당신은 착하다', false),
    Quiz('당신은 못생겼다', true),
    Quiz('당신은 멍청하다', true),
  ];

  void nextQuestion() {
    if (_quizNum < _list.length - 1) {
      _quizNum++;
    }
  }

  String getProblem() {
    return _list[_quizNum].problem;
  }

  bool getAnswer() {
    return _list[_quizNum].answer;
  }

  void reset() {
    _quizNum = 0;
  }

  bool isFinished() {
    print(_quizNum);
    if (_quizNum == _list.length - 1) {
      return true;
    } else
      return false;
  }
}
