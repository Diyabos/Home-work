class Grade {
  int _score = 0;
  set score(int value) {
    if (value >= 0 && value <= 100) {
      _score = value;
    } else {
      print("invaild value");
    }
  }

  int get score => this._score;
  bool isPass() {
    if (_score >= 50) {
      print("congratulation you are passed");
    } else {
      print("you failed");
    }
    return isPass();
  }
}
