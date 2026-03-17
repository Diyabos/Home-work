/**
 Q4.
  Class with Default Attribute Value - Create a class Product
   with attributes name and price.Give price a default value of
    0. - Create two objects: one with a custom price and one
     with the default price. Print their details
 */
class Product {
  String? name;
  int? price;
  Product({String? name, int? price = 0}) {
    this.name = name;
    this.price = price;
  }
}

void main() {
  Product product1 = Product(name: "iphone", price: 70000);
  print({product1.name, product1.price});
  Product product2 = Product(name: "laptop");
  print({product2.name, product2.price});
}
