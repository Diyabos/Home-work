/**
 Given an integer array nums, return true if any value appears
 at least twice in the array, and return false if every element
 is distinct
 */
bool containsDuplicate(List<int> nums) {
  Set<int> seen = {};
  for (int num in nums) {
    if (seen.contains(num)) {
      return true;
    }
    seen.add(num);
  }
  return false;
}
