/**
 Question 19
 Write a Dart program that converts a list of names to a set of unique values. Create a map with
 counts of occurrences. Compare lengths and print a message if a specific name appears more than
 once
 */

void main() {
  // List of names (with duplicates)
  List<String> names = ['Alice', 'Bob', 'Alice', 'Charlie', 'Bob', 'Diana'];

  // Convert list to set to get unique names
  Set<String> uniqueNames = names.toSet();

  // Create a map to count occurrences
  Map<String, int> nameCounts = {};

  for (String name in names) {
    nameCounts[name] = (nameCounts[name] ?? 0) + 1;
  }

  // Print results
  print('Original list: $names');
  print('Unique names (set): $uniqueNames');
  print('Name counts: $nameCounts');

  // Compare lengths
  if (uniqueNames.length < names.length) {
    print('There are duplicate names in the list.');
  } else {
    print('All names are unique.');
  }

  // Check if a specific name appears more than once
  String targetName = 'Alice';

  if ((nameCounts[targetName] ?? 0) > 1) {
    print('$targetName appears more than once.');
  } else {
    print('$targetName appears only once or not at all.');
  }
}
