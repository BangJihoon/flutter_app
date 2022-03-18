class Quiz {
  // private는 변수명 앞에 _로 한다
  String _problem;
  bool _answer;
  // 생성자를 파라미터로 바로 사용한다
  Quiz(
    this._problem,
    this._answer,
  );
  // 캡슐화시 getter를 만들자
  bool get answer => _answer;
  String get problem => _problem;
}
