import 'package:flutter/material.dart';

// 1주차 - 이미지와 scafflod, appbar 의 사용
class PoorApp extends StatelessWidget {
  //const poorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Exam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
          title: Center(child: Text('I Am Pool')),
        ),
        body: Center(
          child: Image(image: AssetImage('assets/images/poor.png')),
        ),
      ),
    );
  }
}
