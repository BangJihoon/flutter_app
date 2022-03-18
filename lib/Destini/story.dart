class Story {
  String _storyTitle = "BangBang";
  String _choice1 = "choice1";
  String _choice2 = "choice2";

  Story(this._storyTitle, this._choice1, this._choice2);

  String get choice2 => _choice2;

  String get choice1 => _choice1;

  String get storyTitle => _storyTitle;
}
