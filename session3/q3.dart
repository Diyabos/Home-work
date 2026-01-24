/**
 Question 11
 Write a Dart program that applies discounts to a price.
 Use nested if/else to apply different discounts based on
 whether the user is a student, has a coupon, or if the price
 is above a threshold. Print the final price
 */
void main() {
  double price = 200.0;
  bool isStudent = true;
  bool hasCoupon = false;

  // Apply discounts using nested if/else
  if (price > 150) {
    if (isStudent) {
      price *= 0.8; // 20% student discount
    } else if (hasCoupon) {
      price *= 0.9; // 10% coupon discount
    }
  } else {
    if (hasCoupon) {
      price *= 0.95; // 5% coupon discount
    }
  }

  // Print final price
  print('Final price: \$${price.toStringAsFixed(2)}');
}
