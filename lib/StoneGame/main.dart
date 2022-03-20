import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam/StoneGame/stone_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(StoneApp());

class StoneApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: StonePage(),
    );
  }
}

StoneBrain sb = new StoneBrain();
int cnt = 1;

class StonePage extends StatefulWidget {
  _StonePageState createState() => _StonePageState();
}

class _StonePageState extends State<StonePage> {
  final player = AudioCache(prefix: 'assets/StoneGame/');
  void choiceButton(bool choice) {
    // 답 검사, 틀리면 alert후 초기화,
    if (sb.checkStone(choice) == false) {
      Alert(
        context: context,
        type: AlertType.error,
        title: 'Die',
        buttons: [
          DialogButton(
            child: Text(
              "다시하기",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
      cnt = 1;
      player.play('die.wav');
    }
    // 맞으면 next값으로 올려줌
    else
      cnt++;
    // 종료지점이면 alter으로 축하문구 반환
    if (sb.isFinished() == true) {
      Alert(
        type: AlertType.success,
        context: context,
        title: 'Survive',
        desc: '축하합니다.',
        buttons: [
          DialogButton(
            child: Text(
              "처음부터 시작하기",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
      cnt = 1;
      player.play('survive.mp3', volume: 10.0);
    }
  }

  @override
  void initState() {
    // init시 최초 1회 실행
    player.clearAll();
    player.loop('squid_game1.mp3');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/StoneGame/bg.jpg'),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Center(
                    child: Text(
                  '$cnt / 10',
                  style: TextStyle(color: Colors.green, fontSize: 70),
                )),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          choiceButton(true);
                        });
                      },
                      child: Text(
                        'Left',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[400],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          choiceButton(false);
                        });
                      },
                      child: Text(
                        'Right',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
