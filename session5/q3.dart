import 'dart:io';

/**
 Q3.
  Word Reversal & Vowel Count - Take a word from the user
   Print the word reversed, and also count how many vowels it
   has.
 */
void main() {
  // Ask the user for a word
  print('Enter a word:');
  String word = stdin.readLineSync()!;

  // Reverse the word
  String reversedWord = word.split('').reversed.join('');

  // Count vowels
  int vowelCount = 0;
  String vowels = 'aeiouAEIOU';

  for (int i = 0; i < word.length; i++) {
    if (vowels.contains(word[i])) {
      vowelCount++;
    }
  }

  // Print results
  print('Reversed word: $reversedWord');
  print('Number of vowels: $vowelCount');
}
