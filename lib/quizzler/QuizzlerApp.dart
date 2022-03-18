import 'package:flutter/material.dart';
import 'package:flutter_exam/quizzler/QuizPage.dart';

// 비상태 저장 앱
class QuizzlerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: QuizPage(),
      ),
    );
  }
}
