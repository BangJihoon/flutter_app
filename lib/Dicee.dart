import 'dart:math';

import 'package:flutter/material.dart';

// 앱 상단은 stless
class DiceeApp extends StatelessWidget {
  //const DiceeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dicee App",
      home: DiceeBody(), // body는 stful을 사용해야 주사위 값 지정 가능
    );
  }
}

class DiceeBody extends StatefulWidget {
  @override
  State<DiceeBody> createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeBody> {
  int leftNum = 1;
  int rightNum = 1;

  void changeNum() {
    setState(() {
      leftNum = Random().nextInt(6) + 1;
      rightNum = Random().nextInt(6) + 1;
    });
  }

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    minimumSize: Size(88, 44),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    backgroundColor: Colors.blue,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              style: flatButtonStyle,
              child: Image.asset('assets/images/dice/dice$leftNum.png'),
              onPressed: () {
                changeNum();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              style: flatButtonStyle,
              child: Image.asset('assets/images/dice/dice$rightNum.png'),
              onPressed: () {
                changeNum();
              },
            ),
          ),
        ],
      ),
    );
  }
}
