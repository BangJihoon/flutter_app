import 'dart:math';

import 'package:flutter/material.dart';

class MagicBall extends StatelessWidget {
  //const MagicBall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Magic Ball",
      home: ballPage(),
    );
  }
}

class ballPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade400,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blueAccent.shade400,
      ),
      body: ball(),
    );
  }
}

class ball extends StatefulWidget {
  @override
  State<ball> createState() => _ballState();
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

class _ballState extends State<ball> {
  int num = 1;
  void changeNum() {
    setState(() {
      num = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextButton(
            style: flatButtonStyle,
            child: Image.asset('assets/images/Magicball/ball$num.png'),
            onPressed: () {
              changeNum();
              print('I got Clicked');
            },
          ),
        ),
      ],
    );
  }
}
