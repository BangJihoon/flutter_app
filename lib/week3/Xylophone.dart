import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatelessWidget {
  // 오디오 실행 함수
  void playSound(int num) {
    final player = AudioCache(prefix: 'assets/xylophone/');
    player.play('note$num.wav');
  }

  // 버튼 위젯 함수
  Expanded buildKey(int num, Color color, String name) {
    return Expanded(
      // 비율을 유지하면서 곻간을 최대로 가짐
      child: TextButton(
        style:
            TextButton.styleFrom(primary: Colors.white, backgroundColor: color),
        child: Text('$name'),
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch, //횡축을 끝까지 늘린다
                children: <Widget>[
                  buildKey(1, Colors.red, "도"),
                  buildKey(2, Colors.orange, "레"),
                  buildKey(3, Colors.yellow, "미"),
                  buildKey(4, Colors.green, "파"),
                  buildKey(5, Colors.blue, "솔"),
                  buildKey(6, Colors.blueAccent.shade700, "라"),
                  buildKey(7, Colors.purple, "시"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
