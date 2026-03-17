/**
 Question 9
 Write a Dart program that removes duplicate items
 from a list using a Set. Compare the unique
 count with the original list length and print
 a message if duplicates were removed
 */
void main() {
  //the orignal list with duplicate
  List<int> numbers = [2, 3, 3, 4, 5, 5, 7, 7];
  //convert the list to set
  Set<int> uniqueSet = numbers.toSet();
  //the print statment
  if (uniqueSet.length < numbers.length) {
    print('duplicated were removed');
  } else {
    print('duplicated is not removed');
  }
  //the print statment
}
