class StoneBrain {
  List<bool> _stone = [
    true,
    false,
    true,
    true,
    true,
    true,
    false,
    false,
    false,
    false
  ];
  int _stoneNum = 0;

  int get stoneNum => _stoneNum;

  bool getStone() {
    return _stone[_stoneNum];
  }

  bool checkStone(choice) {
    // 맞으면 +1후 true
    if (choice == _stone[_stoneNum]) {
      _stoneNum++;
      print('정답 , $_stoneNum');
      return true;
    }
    // 틀리면 초기화후 false
    else {
      print('오답 , $_stoneNum');
      restart();
      return false;
    }
    // 틀리면 retry가 나와야함
  }

  void restart() {
    _stoneNum = 0;
  }

  bool buttonShouldBeVisible() {
    if (_stoneNum >= 10) return false;
    return true;
  }

  bool isFinished() {
    if (_stoneNum == _stone.length) {
      // 종료지점이면?
      restart();
      return true;
    }
    return false;
  }
}
