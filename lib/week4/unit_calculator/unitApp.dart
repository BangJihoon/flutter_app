import 'package:flutter/material.dart';
import 'package:flutter_exam/week4/unit_calculator/screens/InputPage.dart';

class unitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21)),
      home: InputPage(),
    );
  }
}
