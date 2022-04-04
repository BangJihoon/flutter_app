import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    // async는  비동기로 백그라운드로 실행 , 멈춤을 방지한다.
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy:
              LocationAccuracy.low); // 베터리와 직결되므로 날씨같은 앱은 정확도를 수준을 낮추자
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
