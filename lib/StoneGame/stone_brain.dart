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

  bool getStone() {
    return _stone[_stoneNum];
  }

  void nextStone(choice) {
    if (choice == _stone[_stoneNum]) _stoneNum++;
    // 틀리면 retry가 나와야함
  }

  void restart() {
    _stoneNum = 0;
  }

  bool buttonShouldBeVisible() {
    if (_stoneNum >= 10) return false;
    return true;
  }
}
