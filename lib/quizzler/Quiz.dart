class Quiz {
  String _problem;
  bool _answer;

  Quiz(
    this._problem,
    this._answer,
  );

  bool get answer => _answer;
  String get problem => _problem;
}
