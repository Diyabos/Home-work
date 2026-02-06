import 'dart:io';

/**
 Q6.
  Sentence Analyzer - Ask the user to input a sentence.
 - Print how many words it contains.Then print the shortest
  word and the longest word from the sentence
 */
void main() {
  print("input a sentence");
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split("");
  String shortest = words[0];
  String longest = words[0];
  for (String word in words) {
    if (word.length > shortest.length) {
      shortest = word;
    } else if (word.length < longest.length) {
      longest = word;
    }
  }
  print(words.length);
  print(longest);
  print(shortest);
}
