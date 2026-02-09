import 'dart:io';
import 'dart:vmservice_io';

/**
 Q8
  Ask the user to input a sentence. Print all the words that
  appear only once in the sentence. Also print the total count
   of unique words
 */
void main() {
  print("input a sentence");
  String sentence = stdin.readLineSync()!.toLowerCase();
  List<String> words = sentence.split(RegExp(r'\s+'));
  Map<String, int> countMap = {};
  for (var word in words) {
    countMap[word] = (countMap[word] ?? 0) + 1;
  }
  int uniqueCount = 0;
  print("words appearing only once:");
  countMap.forEach((word, count) {
    if (count == 1) {
      print(word);
      uniqueCount++;
    }
  });
  print("total unique words : $uniqueCount");
}
