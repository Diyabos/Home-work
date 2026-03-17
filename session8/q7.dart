import 'dart:io';
import 'dart:vmservice_io';

/**
 Q7
 Ask the user to input a list of integers.- Print the largest
 number, the smallest number, and their difference.- Calculate
  the average of the list.- Print all numbers that are above
   the average.- Finally, print how many numbers are even and
    how many are odd in the list
 */
void main() {
  print("input number");
  String input = stdin.readLineSync()!;
  if (input == null || input.isEmpty) {
    print("No input available");
    return;
  }
  List<int> numbers = input.split("").map(int.parse).toList();
  int largest = numbers.reduce((a, b) => a > b ? a : b);
  int smallest = numbers.reduce((a, b) => a < b ? a : b);
  int difference = largest - smallest;

  print("Largest number: $largest");
  print("Smallest number: $smallest");
  print("Difference: $difference");

  double average = numbers.reduce((a, b) => a + b) / numbers.length;
  print("Average: $average");

  List<int> aboveAverage = numbers.where((num) => num > average).toList();
  print("Numbers above average: $aboveAverage");

  int evenCount = numbers.where((num) => num % 2 == 0).length;
  int oddCount = numbers.where((num) => num % 2 != 0).length;

  print("Even numbers count: $evenCount");
  print("Odd numbers count: $oddCount");
}
