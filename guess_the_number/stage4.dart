import 'dart:io';
import 'dart:math';

void main() {
  print('Выберите режим игры:');
  print('1 - Компьютер загадывает, вы отгадываете');
  print('2 - Вы загадываете, компьютер отгадывает');
  print('3 - Игра по очереди');
  var gameMode = int.parse(stdin.readLineSync()!);
  if (gameMode == 1) {
    playReverseGame();
  } else if (gameMode == 2) {
    playDirectGame();
  } else if (gameMode == 3) {
    playAlternatingGame();
  } else {
    print('Некорректный ввод. Попробуйте ещё раз');
    main();
  }
}

void playReverseGame() {
  var random = Random();
  var number = random.nextInt(100) + 1;
  var steps = 0;
  var guess;
  print('Компьютер загадал число от 1 до 100. Попробуйте отгадать:');
  do {
    guess = int.parse(stdin.readLineSync()!);
    steps++;
    if (guess > number) {
      print('Меньше');
    } else if (guess < number) {
      print('Больше');
    }
  } while (guess != number);
  print('Вы угадали число $number за $steps шагов');
}

void playDirectGame() {
  var steps = 0;
  var guess;
  print('Загадайте число от 1 до 100. Компьютер попытается отгадать:');
  var number = int.parse(stdin.readLineSync()!);
  var minNumber = 1;
  var maxNumber = 100;
  do {
    var guess = minNumber + (maxNumber - minNumber) ~/ 2;
    steps++;
    if (guess > number) {
      maxNumber = guess - 1;
    } else if (guess < number) {
      minNumber = guess + 1;
    }
  } while (guess != number);
  print('Компьютер угадал число $number за $steps шагов');
}

void playAlternatingGame() {
  var roundCount = 3;
  print('Сколько раундов вы хотите сыграть? (от 1 до 10)');
  var input = stdin.readLineSync();
  if (input!.isNotEmpty) {
    roundCount = int.parse(input);
  }
  print('Каждый раунд состоит из двух этапов:');
  print('1. Вы загадываете число, а компьютер отгадывает');
  print('2. Компьютер загадывает число, а вы отгадываете');
  print('Выигрывает тот, кто угадал число за меньшее число ходов.');
  var computerWins = 0;
  var userWins = 0;
  for (var round = 1; round <= roundCount; round++) {
    print('====================');
    print('Раунд $round:');
    var number = 0;
    var steps = 0;
    print('1.
