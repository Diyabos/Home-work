import 'dart:io';

/**
 Q5.
   Multiplication Table with Sum - Ask the user for a number.
  - Print its multiplication table up to 10, then calculate the
   sum of all results.
 */
void main() {
  // Ask the user for a number
  print('Enter a number:');
  int n = int.parse(stdin.readLineSync()!);

  int sum = 0;

  print('Multiplication table of $n:');

  for (int i = 1; i <= 10; i++) {
    int result = n * i;
    print('$n x $i = $result');
    sum += result;
  }

  // Print the sum of all results
  print('Sum of all results: $sum');
}
