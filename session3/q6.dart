/**
 Question 14
 Write a Dart program that works with a nullable list of
 integers. If the list is null or empty, print 'No
 scores'. Otherwise, calculate and print the sum of the first
 and last elements and check if it is
 greater than or equal to 40
 */
void main() {
  List<int>? numbers = null;
  //check if the list is null or not
  if (numbers != null && numbers.isNotEmpty) {
    print('no scores');
    var sum = numbers.first + numbers.last;
    print(sum);
  } else {
    print('no score');
  }
}
