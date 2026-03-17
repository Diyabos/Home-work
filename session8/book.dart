class Book {
  String _title = "";
  int _pages = 0;
  set title(String value) {
    if (value.isNotEmpty) {
      _title = value;
    } else {
      print("invaild book name");
    }
  }

  set pages(int value) {
    if (value >= 0) {
      _pages = value;
    } else {
      print("invaild value");
    }
  }

  String get title => this._title;
  int get pages => this._pages;
  int get readingTime => _pages * 2;
}
