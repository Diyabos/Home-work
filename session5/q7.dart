import 'dart:io';

/**
 Q7.
  Sentence Word Counter - Ask the user for a short sentence.
 - Print how many words it contains and how many characters
  (excluding spaces).
 */
void main() {
  // Ask the user for a sentence
  print('Enter a short sentence:');
  String sentence = stdin.readLineSync()!;

  // Count words
  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  int wordCount = words[0].isEmpty ? 0 : words.length;

  // Count characters (excluding spaces)
  int charCount = 0;
  for (int i = 0; i < sentence.length; i++) {
    if (sentence[i] != ' ') {
      charCount++;
    }
  }

  // Print results
  print('Number of words: $wordCount');
  print('Number of characters (excluding spaces): $charCount');
}
