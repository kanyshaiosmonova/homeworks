import 'dart:io';

void main() {
//  1)В переменной day лежит какое-то число из интервала от 1 до 31. Определите в какую декаду месяца попадает это число (в первую, вторую или третью).Ввод должен быть через консоль
  // stdout.write('Введите число от 1 до 31: ');
  // int day = int.parse(stdin.readLineSync()!);

  // int decade = ((day - 1) / 10).floor() + 1;

  // switch (decade) {
  //   case 1:
  //     print('Введенное число попадает в первую декаду месяца');
  //     break;
  //   case 2:
  //     print('Введенное число попадает во вторую декаду месяца');
  //     break;
  //   case 3:
  //     print('Введенное число попадает в третью декаду месяца');
  //     break;
  //   default:
  //     print('Введенное число не находится в интервале от 1 до 31');
  // }

// 2)В переменной month лежит число от 1 до 12. Определите в какую пору года попадает этот месяц (зима, лето, весна, осень).Bвод должен быть через консоль

  // stdout.write('Введите номер месяца: ');
  // int month = int.parse(stdin.readLineSync()!);

  // switch (month) {
  //   case 12:
  //   case 1:
  //   case 2:
  //     print('Это зима');
  //     break;
  //   case 3:
  //   case 4:
  //   case 5:
  //     print('Это весна');
  //     break;
  //   case 6:
  //   case 7:
  //   case 8:
  //     print('Это лето');
  //     break;
  //   case 9:
  //   case 10:
  //   case 11:
  //     print('Это осень');
  //     break;
  //   default:
  //     print('Ошибка: неверный номер месяца');
  //     break;
  // }

// 3)Дана строка, состоящая из символов, например, 'abcde'. Проверьте, что первым символом этой строки является буква 'a'. Если это так - выведите 'да', в противном случае выведите 'нет'.

  // String str = 'abcde';
  // switch (str[0]) {
  //   case 'a':
  //     print('да');
  //     break;
  //   default:
  //     print('нет');
  //     break;
  // }

// 4)Дана строка с цифрами, например, '12345'. Проверьте, что первым символом этой строки является цифра 1, 2 или 3. Если это так - выведите 'да', в противном случае выведите 'нет'.
  // String str1 = '12345';

// Каждый блок case в этом коде содержит одно и то же действие, поэтому лучше использовать оператор case '1': case '2': case '3': вместо трех отдельных блоков case. Это уменьшает дублирование кода
  // switch (str1[0]) {
  //   case '1':
  //   case '2':
  //   case '3':
  //     print('да');
  //     break;
  //   default:
  //     print('нет');
  //     break;
  // }

// 5)Дана строка из 3-х цифр. Найдите сумму этих цифр. То есть сложите как числа первый символ строки, второй и третий.ввод должен быть через консоль

  // print('Введите строку из 3 цифр: ');
  // String str2 = stdin.readLineSync()!;

  // if (str2 == null || str2.length != 3) {
  //   print('Ошибка: введены некорректные символы!');
  //   return;
  // }
  // int sum = 0;
  // for (int i = 0; i < str2.length; i++) {
  //   sum += int.parse(str2[i]);
  // }
// print('Сумма цифр равна $sum');

// 6) Дана строка из 6-ти цифр. Проверьте, что сумма первых трех цифр равняется сумме вторых трех цифр. Если это так - выведите 'да', в противном случае выведите 'нет'.ввод должен быть через консоль
  // print('Введите строку из 6 цифр: ');
  // String str3 = stdin.readLineSync()!;

  // int sum1 = int.parse(str3[0]) + int.parse(str3[1]) + int.parse(str3[2]);
  // int sum2 = int.parse(str3[3]) + int.parse(str3[4]) + int.parse(str3[5]);

  // switch (sum1 == sum2) {
  //   case true:
  //     print('да');
  //     break;
  //   default:
  //     print('нет');
  // }

// 1)Необходимо написать программу, которая
// 1)  Регистрация по логину и паролю
// 2) проверяет правильность введения пароля.
// При введении правильного пароля необходимо вывести “Верный пароль”
// При введении неверного пароля необходимо вывести “Повторите ввод ” и запрашивать ввод пароля
  // Регистрация по логину и паролю
  // const username = 'example_user';
  // String password = 'password123';

  // print('Введите логин:');
  // String inputUsername = stdin.readLineSync()!;

  // switch (inputUsername) {
  //   case username:
  //     print('Введите пароль:');
  //     String inputPassword = stdin.readLineSync()!;
  //     if (inputPassword == password) {
  //       print('Верный пароль');
  //     } else {
  //       print('Повторите ввод');
  //       while (true) {
  //         inputPassword = stdin.readLineSync()!;
  //         if (inputPassword == password) {
  //           print('Верный пароль');
  //           break;
  //         } else {
  //           print('Повторите ввод');
  //         }
  //       }
  //     }
  //     break;
  //   default:
  //     print('Неверный логин');
  //     break;
  // }
// 2)Организовать беспрерывный ввод чисел с клавиатуры, пока пользователь не введёт 0. После ввода нуля, показать на экран количество чисел, которые были введены, их общую сумму и среднее арифметическое. Подсказка: необходимо объявить переменную-счетчик, которая будет считать количество введенных чисел, и переменную, которая будет накапливать общую сумму чисел.
  // int count = 0;
  // int sum = 0;

  // while (true) {
  //   print('Введите число (или 0 для окончания ввода):');
  //   int input = int.parse(stdin.readLineSync()!);

  //   switch (input) {
  //     case 0:
  //       double average = sum / count;
  //       print('Количество введенных чисел: $count');
  //       print('Общая сумма чисел: $sum');
  //       print('Среднее арифметическое: $average');
  //       return;
  //     default:
  //       count++;
  //       sum += input;
  //       break;
  //   }
  // }

// 3)Необходимо суммировать все нечётные целые числа в диапазоне, который введёт пользователь с клавиатуры.
  print('Введите начало диапазона:');
  int start = int.parse(stdin.readLineSync()!);

  print('Введите конец диапазона:');
  int end = int.parse(stdin.readLineSync()!);

  int sum = 0;

  switch (start % 2) {
    case 0:
      for (int i = start + 1; i <= end; i += 2) {
        sum += i;
      }
      break;
    default:
      for (int i = start; i <= end; i += 2) {
        sum += i;
      }
      break;
  }

  print('Сумма нечётных чисел в диапазоне от $start до $end: $sum');
}
