import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_exam/UrlLauncher.dart';

// 2주차 - row, column, safeArea(크기가 넘어가지않게해줌), font 적용,

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.blue.shade500, body: CardBody()),
    );
  }
}

class CardBody extends StatefulWidget {
  @override
  State<CardBody> createState() => _CardBodyState();
}

class _CardBodyState extends State<CardBody> {
  int num = 1;
  void changePicture() {
    setState(() {
      num = Random().nextInt(9) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextButton(
            child: CircleAvatar(
              radius: 80, // 반지름
              backgroundImage: AssetImage('assets/images/micard/bang$num.jpg'),
            ),
            onPressed: () {
              changePicture();
            },
          ),
          Text('Bang jihoon',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40,
                letterSpacing: 1.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          Text('FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20,
                letterSpacing: 2.0,
                color: Colors.blue.shade100,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 30,
            width: 200,
            child: Divider(
              color: Colors.black87,
            ),
          ),
          Text('CONTACT ME',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20,
                letterSpacing: 2.0,
                color: Colors.blue.shade100,
                fontWeight: FontWeight.bold,
              )),
          Card(
            color: Colors.white,
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: TextButton(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.blue.shade500,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '+82 10-2085-3318',
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro'),
                    ),
                  ],
                ),
                onPressed: () {
                  UrlLauncher().call();
                },
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: TextButton(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.blue.shade500,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'jihoon289@gmail.com',
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro'),
                    ),
                  ],
                ),
                onPressed: () {
                  UrlLauncher().email();
                },
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: TextButton(
                child: Row(
                  children: <Widget>[
                    ImageIcon(
                      AssetImage('assets/images/micard/tistory.png'),
                      color: Colors.blue.shade900,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'https://bangu4.tistory.com/',
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro'),
                    )
                  ],
                ),
                onPressed: () {
                  UrlLauncher().launchURL('https://bangu4.tistory.com/');
                },
              ),
            ),
          ),
          Card(
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: TextButton(
                child: Row(
                  children: <Widget>[
                    ImageIcon(
                      AssetImage('assets/images/micard/github.png'),
                      color: Colors.blue.shade900,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'https://github.com/bangjihoon',
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro'),
                    )
                  ],
                ),
                onPressed: () {
                  UrlLauncher().launchURL('https://github.com/bangjihoon');
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
