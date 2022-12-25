//Циклы

//Задание номер 1
// 1) Возьмем, например, два списка:
// a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
// и напишите программу, которая возвращает список, содержащий только общие для них элементы (без дубликатов). Убедитесь, что ваша программа работает с двумя списками разного размера.
// Ответ: [1, 2, 3, 5, 8, 13]
// void main() {
//   List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
//   List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
//   List c = [];

//   for (int i = 0; i < a.length; i++) {
//     if (b.contains(a[i]) && !c.contains(a[i])) {
//       c.add(a[i]);
//     }
//   }
//   print(c);
// }

/*Задание номер 2
Допустим, вам дан список, сохраненный в переменной:
а = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
Напишите код Dart, который берет этот список и создает новый список, в котором есть только четные элементы этого списка.
Ответ = [4, 16, 36, 64, 100];*/
// void main() {
//   List b = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

//   funcOne(b);
//   print(funcOne(b));
// }
// List funcOne(List a) {
//   List b = [];

//   for (int i = 0; i < a.length; i++) {
//     if (a[i].isEven) {
//       b.add(a[i]);
//     }
//   }
//   return b;
// }

// Задание номер 3
// 3) Создайте функцию, которая принимает две строки в качестве аргументов и возвращает, сколько раз первая строка (один символ) была найдена во второй строке.
// Пример:
// вожу "a" и "dart" ➞ результат = 1
// вожу "c" и "Chamber of secrets" ➞ результат = 1
// вожу "b" и "big fat bubble" ➞ результат = 4
void main() {
  print(funcTwo('a', 'daaart'));
}

int funcTwo(String a, String b) {
  int c = 0;
  for (int i = 0; i < b.length; i++) {
    if (a.contains(b[i])) {
      c++;
    }
  }
  return c;
}
