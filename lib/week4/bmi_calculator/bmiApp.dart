import 'package:flutter/material.dart';
import 'package:flutter_exam/week4/bmi_calculator/screens/InputPage.dart';

class bmiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21)),
      home: InputPage(),
    );
  }
}
