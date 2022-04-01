import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam/week5/main.dart';

void main() {
  runApp(climaApp());
}

class ExamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Study Apps"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: double.infinity,
                      alignment: AlignmentDirectional.center,
                      child: Text("Week1"),
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: double.infinity,
                      alignment: AlignmentDirectional.center,
                      child: Text("Week1"),
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: double.infinity,
                      alignment: AlignmentDirectional.center,
                      child: Text("Week1"),
                      margin: EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Expanded(
                      child: Container(
                        height: double.infinity,
                        alignment: AlignmentDirectional.center,
                        child: Text("Week1"),
                        margin: EdgeInsets.all(40),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: double.infinity,
                      alignment: AlignmentDirectional.center,
                      child: Text("Week1"),
                      margin: EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Expanded(
                      child: Container(
                        height: double.infinity,
                        alignment: AlignmentDirectional.center,
                        child: Text("Week1"),
                        margin: EdgeInsets.all(40),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: double.infinity,
                      alignment: AlignmentDirectional.center,
                      child: Text("Week1"),
                      margin: EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Expanded(
                      child: Container(
                        height: double.infinity,
                        alignment: AlignmentDirectional.center,
                        child: Text("Week1"),
                        margin: EdgeInsets.all(40),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
