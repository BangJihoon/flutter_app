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
              child: TextButton(
                  child: Text("Click Me"),
                  onPressed: () {
                    final player = AudioCache(prefix: 'assets/xylophone/');
                    player.play('note1.wav');
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
