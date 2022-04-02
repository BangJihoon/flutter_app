import 'package:flutter/material.dart';
import 'package:flutter_exam/component/mainButton.dart';

class MainPage extends StatelessWidget {
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
                MainButton(1),
                MainButton(2),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                MainButton(3),
                MainButton(4),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                MainButton(5),
                MainButton(6),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                MainButton(7),
                MainButton(8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
