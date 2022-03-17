import 'package:flutter/material.dart';
import 'package:flutter_exam/quizzler/Quiz.dart';

class QulzzlerApp extends StatefulWidget {
  @override
  State<QulzzlerApp> createState() => _QulzzlerAppState();
}

class _QulzzlerAppState extends State<QulzzlerApp> {
  int quizNum = 0;
  List<Icon> ScoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          children: <Widget>[
            // 문제 출력부
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  list[quizNum].problem,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
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
                          setState(() {
                            ScoreRecord(list[quizNum].answer == true);
                            if (quizNum < list.length - 1) {
                              // 다음문제가 있으면 넘겨주고
                              quizNum++;
                            }
                          });
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
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.red),
                        onPressed: () {},
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
                children: ScoreKeeper,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
