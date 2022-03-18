import 'package:flutter/material.dart';
import 'package:flutter_exam/quizzler/Quiz_Brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

// 상태저장 앱  QuizPage()
class QuizPage extends StatefulWidget {
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  Quiz_Brain q = new Quiz_Brain();
  int count = 0;
  List<Icon> ScoreKeeper = [];

  void checkAnswer(bool answer) {
    setState(() {
      if (answer == q.getAnswer()) {
        count++;
        ScoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        ScoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      ;
      q.nextQuestion();
      if (q.isFinished() == true) {
        Alert(
            context: context,
            title: 'Finished',
            desc: '총 $count 개 맞추셨습니다!',
            closeFunction: () {
              ScoreKeeper = [];
            }).show();
        q.reset();
        count = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          // 문제 출력부
          Expanded(
            flex: 5,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  q.getProblem(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
          // 버튼 부분
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.green),
                      onPressed: () {
                        checkAnswer(true);
                      },
                      child: Text(
                        "O",
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      style: TextButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {
                        checkAnswer(false);
                      },
                      child: Text(
                        "X",
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // ScoreKeeper 부분
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: ScoreKeeper,
            ),
          ),
        ],
      ),
    );
  }
}
