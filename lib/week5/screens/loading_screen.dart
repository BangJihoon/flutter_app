import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    // async는  비동기로 백그라운드로 실행 , 멈춤을 방지한다.
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy:
            LocationAccuracy.low); // 베터리와 직결되므로 날씨같은 앱은 정확도를 수준을 낮추자
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
            getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
