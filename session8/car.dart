class Car {
  String _brand = "";
  int _year = 0;
  set brand(String value) {
    if (value.isNotEmpty) {
      _brand = value;
    } else {
      print("invaild brand name");
    }
  }

  set year(int value) {
    if (value >= 1886) {
      _year = value;
    } else {
      print("invaild value");
    }
  }

  String get brand => this._brand;
  int get year => this._year;
}
