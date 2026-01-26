/**
 Q10
 Create a program with the numbers [3, 7, 2, 9, 12, 4, 6].
 Print only the numbers that are divisible by 3
 */
void main() {
  //creating the numbers list
  List<int> numbers = [3, 7, 2, 9, 12, 4, 6];
  for (int numbers in numbers) {
    if (numbers % 3 == 0) {
      print(numbers);
    }
  }
}
