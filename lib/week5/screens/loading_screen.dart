import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_exam/week5/services/location.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    Url url =
        'https://samples.openweathermap.org/data/2.5/weather?lat=37&lon=126&appid=d472ecddc2e3dc2ddef141cae9d1a129'
            as Url;
    http.Response responce = await http.get(url);
    if (responce.statusCode == 200)
      print(responce.body);
    else
      print(responce.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
