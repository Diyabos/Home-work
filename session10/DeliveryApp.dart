class FoodItem {
  String name;
  double price;
  String category;

  FoodItem(this.name, this.price, this.category);

  @override
  String toString() {
    return "$name ($category) - \$${price.toStringAsFixed(2)}";
  }
}

class Order {
  List<FoodItem> _items = [];

  void addItem(FoodItem item) {
    _items.add(item);
    print("${item.name} added to order.\n");
  }

  double calculateTotal() {
    return _items.fold(0, (total, item) => total + item.price);
  }

  void showOrder() {
    if (_items.isEmpty) {
      print("Your order is empty.\n");
      return;
    }

    print("\n===== Your Order =====");
    for (var item in _items) {
      print(item);
    }
    print("----------------------");
    print("Total: \$${calculateTotal().toStringAsFixed(2)}\n");
  }
}
