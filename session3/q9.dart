/**
 Write a Dart program that formats a price tag string with
 a currency. Apply string methods such as toString,
 padLeft, and length to format and compare the results.
 */
void main() {
  double price = 45.00;
  String currency = '\$';
  //convert price to string
  String priceString = price.toString();
  String priceTag = currency + priceString;
  //apply pad to the price tag and print
  String paddedPriceTag = priceTag.padLeft(4);
  print(priceTag.length);
  print(paddedPriceTag.length);
  //the comparison
  if (priceTag.length < paddedPriceTag.length) {
    print('price tag was padded for formatting');
  } else {
    print('no padding was needed');
  }
}
