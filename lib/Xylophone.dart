import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.stretch, //횡축을 끝까지 늘린다 (mainAxis는 주축)
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.white, backgroundColor: Colors.red),
                    child: Text("Click Me"),
                    onPressed: () {
                      final player = AudioCache(prefix: 'assets/xylophone/');
                      player.play('note1.wav');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
