import 'package:flutter/material.dart';

// 1주차 - 이미지와 scafflod, appbar 의 사용과 pub에 assets 추가
class RichApp extends StatelessWidget {
  //const RichApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 디버깅 리본 제거
      home: Scaffold(
        appBar: AppBar(
          title: Text("I am Rich"),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey[100],
        body: Center(
            child: Image(
          image: AssetImage('assets/images/dia.png'),
        )),
      ),
    );
  }
}
