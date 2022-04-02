import 'package:flutter/material.dart';
import 'package:flutter_exam/component/constants.dart';

class AppButton extends StatelessWidget {
  AppButton(this.appName);
  final String appName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Expanded(
        child: Container(
          height: double.infinity,
          alignment: AlignmentDirectional.center,
          child: Text(
            appName,
            style: h1TextStyle,
          ),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      onTap: () {
        //Navigator.push(context,MaterialPageRoute(builder: (context) => examPage(_idx - 1)));
      },
    );
  }
}
