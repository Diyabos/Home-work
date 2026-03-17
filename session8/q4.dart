import 'product.dart';

/**
 Q4
Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.-
 Add a computed getter discountedPrice that returns the price
  with a 10% discount applied.- In main(), demonstrate setting
   values and printing the original and discount
 */
void main() {
  Product product = Product();
  product.name = "tv";
  product.price = 1000;
  print("the ${product.name} price is ${product.Price}");
  print(
    "the ${product.name} price after the disscount is ${product.disscountedPrice}",
  );
}
