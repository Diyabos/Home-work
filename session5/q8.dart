import 'dart:io';

/**
 Q8.
  Digits Operations - Ask the user for a number (e.g., 528).
 - Print the sum of its digits and also print the largest
  digit
 */
void main() {
  // Ask the user for a number
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);

  int sum = 0;
  int largestDigit = 0;

  int temp = number;

  while (temp > 0) {
    int digit = temp % 10; // get last digit
    sum += digit;

    if (digit > largestDigit) {
      largestDigit = digit;
    }

    temp ~/= 10; // remove last digit
  }

  // Print results
  print('Sum of digits: $sum');
  print('Largest digit: $largestDigit');
}
