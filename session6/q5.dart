import 'dart:io';

/**
 Q5. 
 Find Second Largest Number - Ask the user to enter 6 numbers
  in a list. - Print the largest number and the second largest
   number (without sorting the list).
 */
void main() {
  List<int> numbers = [];
  print("Enter 6 numbers");
  for (int i = 1; i <= 6; i++) {
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  int largest = numbers[0];
  int secondLargest = numbers[0];
  for (int num in numbers) {
    if (num > largest) {
      secondLargest = largest;
      largest = num;
    } else if (num > secondLargest && num != largest) {
      secondLargest = num;
    }
  }
  print(" the largest number is $largest");
  print("the second large number is $secondLargest");
}
