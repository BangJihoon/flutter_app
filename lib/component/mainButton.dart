import 'package:flutter/material.dart';
import 'package:flutter_exam/component/constants.dart';
import 'package:flutter_exam/screens/examPage.dart';

int _idx = 0;

class MainButton extends StatelessWidget {
  MainButton(this._idx);
  final int _idx;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Expanded(
          child: Container(
            height: double.infinity,
            alignment: AlignmentDirectional.center,
            child: Text(
              "Week $_idx",
              style: h1TextStyle,
            ),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: examButtonColor[_idx - 1],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => examPage(_idx - 1)));
        },
      ),
    );
  }
}
