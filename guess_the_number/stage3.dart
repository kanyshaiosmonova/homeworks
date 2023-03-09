import 'dart:io';
import 'dart:math';

void main() {
  print('Welcome to Guess the Number game!');
  print('Please select game mode: ');
  print('1 - You guess the number');
  print('2 - Computer guesses the number');
  final String choice = stdin.readLineSync()!;
  switch (choice) {
    case '1':
      playUserGuessingGame();
      break;
    case '2':
      playComputerGuessingGame();
      break;
    default:
      print('Invalid choice. Please try again.');
      main();
  }
}

void playUserGuessingGame() {
  final int number = Random().nextInt(100) + 1;
  int guess;
  int count = 0;
  print('Guess the number between 1 and 100:');
  do {
    guess = int.parse(stdin.readLineSync()!);
    count++;
    if (guess > number) {
      print('Less!');
    } else if (guess < number) {
      print('Greater!');
    }
  } while (guess != number);
  print('Congratulations! You guessed the number in $count guesses.');
}

void playComputerGuessingGame() {
  int min = 1;
  int max = 100;
  int guess;
  int count = 0;
  print('Think of a number between 1 and 100, I will try to guess it.');
  do {
    guess = ((max - min) / 2).floor() + min;
    count++;
    print('Is your number $guess?');
    final String answer = stdin.readLineSync()!;
    if (answer == 'greater') {
      min = guess + 1;
    } else if (answer == 'less') {
      max = guess - 1;
    }
  } while (answer != 'yes');
  print('I guessed your number in $count guesses.');
}
