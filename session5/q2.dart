import 'dart:io';

/**
 Q2.
  Odd Numbers in a Range - Ask the user to input a number
  n. - Print all odd numbers between 1 and n, and also print
  how many odd numbers were found
 */
void main() {
  // Ask the user for n
  print('Enter a number:');
  int n = int.parse(stdin.readLineSync()!);

  int count = 0;

  print('Odd numbers between 1 and $n:');

  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      print(i);
      count++;
    }
  }

  // Print total count
  print('Total odd numbers: $count');
}
