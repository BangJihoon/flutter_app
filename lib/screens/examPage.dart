import 'package:flutter/material.dart';

class examPage extends StatelessWidget {
  examPage(this._idx);
  final int _idx; // 주(week)차 번호

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Column(
          children: [
            Text("$_idx"),
            //AppButton(examAppNames[_idx][0]),
          ],
        ),
      ),
    );
  }
}
