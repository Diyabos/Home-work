/**
  Exercise 7:
 a) Start with List numbers = [4, 4, 5, 6, 6, 7].
 b) Convert it to a Set to remove duplicates and print it.
 c) Use add(), remove(), and contains() with the set, printing each result
  */
void main() {
  List<int> nums = [4, 4, 5, 6, 6, 7];
  Set<int> numset = nums.toSet();
  print('$numset');
  numset.add(11);
  print('$numset');
  numset.remove(4);
  print('$numset');
  numset.contains(5);
  print('$numset');
}
