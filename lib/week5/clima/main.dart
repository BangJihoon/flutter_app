import 'package:flutter/material.dart';
import 'package:flutter_exam/week5/clima/screens/loading_screen.dart';

void main() => runApp(climaApp());

class climaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
