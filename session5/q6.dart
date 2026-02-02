import 'dart:io';
import 'dart:math';

/**
 Q6.
  Number Guessing (3 Tries) - Generate a random number between
  1 and 20. - Let the user guess up to 3 times. If they fail,
  reveal the correct number
 */
void main() {
  Random random = Random();
  int secretNumber = random.nextInt(20) + 1; // 1 to 20

  bool guessedCorrectly = false;

  print('I have selected a number between 1 and 20.');
  print('You have 3 attempts to guess it.');

  for (int attempt = 1; attempt <= 3; attempt++) {
    print('Attempt $attempt: Enter your guess:');
    int guess = int.parse(stdin.readLineSync()!);

    if (guess == secretNumber) {
      print('🎉 Correct! You guessed the number.');
      guessedCorrectly = true;
      break;
    } else {
      print('❌ Wrong guess.');
    }
  }

  if (!guessedCorrectly) {
    print('You failed! The correct number was $secretNumber.');
  }
}
