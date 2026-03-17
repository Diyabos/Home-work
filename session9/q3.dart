/**
 Q3
 Given an array of integers nums sorted in ascending order, and
 an integer target, write a function to search target in nums.
 - If target exists, return its index. Otherwise, return -1.
 - The algorithm must run in O(log n) time complexity.
Examples:- Input: nums = [-1,0,3,5,9,12], target = 9 → Output: 4
Explanation: 9 exists in nums and its index is 4.- Input: nums
 = [-1,0,3,5,9,12], target = 2 → Output: -1
Explanation: 2 does not exist in nums, so return -1
 */
void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int target = 10;
  int start = 0;
  int end = numbers.length - 1;
  while (start >= end) {
    int mid = (start + end) ~/ 2;
    if (numbers[mid] == target) {
      print("target found at index $mid");
      break;
    } else if (numbers[mid] < target) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }
}
