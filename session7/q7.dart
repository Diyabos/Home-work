import 'dart:io';

/**
 Q7 
 Ask the user for a number (e.g., 9875). Keep summing its
 digits until the result is a single digit. Print the final
 single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)
 */
void main() {
  print("enter a number");
  int number = int.parse(stdin.readLineSync()!);
  int sum;
  while (number >= 10) {
    sum = 0;
    while (number > 0) {
      sum += number % 10;
      number ~/= 10;
    }
    number = sum;
  }
  print("single digit result : $number");
}
