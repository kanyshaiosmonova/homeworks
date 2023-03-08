import 'dart:io';

int guessNumber() {
  int min = 1;
  int max = 100;
  int guess;
  int steps = 0;

  do {
    // Вычисляем новое предполагаемое число
    guess = ((max - min) / 2).floor() + min;

    // Выводим предполагаемое число на экран
    print('Is it $guess?');

    // Считываем ответ пользователя
    String answer = stdin.readLineSync().toLowerCase();

    // Проверяем ответ пользователя и корректируем диапазон поиска
    if (answer == 'greater') {
      min = guess + 1;
    } else if (answer == 'less') {
      max = guess - 1;
    }

    steps++;
  } while (answer != 'yes');

  // Возвращаем количество шагов
  return steps;
}
