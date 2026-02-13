class Product {
  String _name = "";
  double _price = 0;
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    } else {
      print("invaild product name");
    }
  }

  set price(double value) {
    if (value >= 0) {
      _price = value;
    } else {
      print("invaild value");
    }
  }

  String get name => this._name;
  double get Price => this._price;
  double get disscountedPrice => this._price * 0.9;
}
