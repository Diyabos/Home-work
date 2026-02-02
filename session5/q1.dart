import 'dart:io';

/**
 Q1.
  Sum, Average & Compare - Ask the user for three numbers
  - Print their sum and average.Then, check if the average is
   greater than 50 or not.
 */

void main() {
  // Ask the user for three numbers
  print('Enter first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Enter third number:');
  double num3 = double.parse(stdin.readLineSync()!);

  // Calculate sum and average
  double sum = num1 + num2 + num3;
  double average = sum / 3;

  // Print results
  print('Sum: $sum');
  print('Average: $average');

  // Check if average is greater than 50
  if (average > 50) {
    print('The average is greater than 50.');
  } else {
    print('The average is not greater than 50.');
  }
}
