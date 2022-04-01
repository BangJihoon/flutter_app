// 객체 수정
class Story {
  String _storyTitle;
  String _choice1;
  String _choice2;

  Story(this._storyTitle, this._choice1, this._choice2);

  String get choice2 => _choice2;

  String get choice1 => _choice1;

  String get storyTitle => _storyTitle;
}
