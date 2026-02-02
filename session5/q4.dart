import 'dart:io';

/**
 Q4.
  Simple List Analyzer - Let the user enter 5 numbers into
  a list. - Print the largest and smallest numbers, and then
   calculate the difference between them.
 */
void main() {
  List<int> numbers = [];

  // Ask user to enter 5 numbers
  for (int i = 1; i <= 5; i++) {
    print('Enter number $i:');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  // Find largest and smallest
  int largest = numbers[0];
  int smallest = numbers[0];

  for (int num in numbers) {
    if (num > largest) {
      largest = num;
    }
    if (num < smallest) {
      smallest = num;
    }
  }

  // Calculate difference
  int difference = largest - smallest;

  // Print results
  print('Numbers entered: $numbers');
  print('Largest number: $largest');
  print('Smallest number: $smallest');
  print('Difference: $difference');
}
