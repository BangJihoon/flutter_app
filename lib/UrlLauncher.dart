import 'dart:core';

import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  final Uri EMAIL = Uri(
      scheme: 'mailto',
      path: 'jihoon289@naver.com',
      queryParameters: {
        'subject': 'fluuter 개발자분께 문의 드립니다',
        'body': '개발자님 안녕하세요'
      });
  static const CALL = 'tel:01020853318';
  static const SMS = 'sms:01020853318';

  void launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void call() async {
    if (await canLaunch(CALL)) {
      await launch(CALL);
    } else {
      throw 'error call';
    }
  }

  void sms() async {
    if (await canLaunch(SMS)) {
      await launch(SMS);
    } else {
      throw 'error sms';
    }
  }

  void email() async {
    if (await canLaunch(EMAIL.toString())) {
      await launch(EMAIL.toString());
    } else {
      throw 'error email';
    }
  }
}
