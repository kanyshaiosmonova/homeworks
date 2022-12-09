import 'dart:math';

void main() {
//Практические задания
//First Task
  void main() {
    double b = 4.20;
    int a = 3;
    print(b + a);

//Second Task
    String text = 'Flutter';
    print("I want to learn " + text);

//Third Task
    double myNumber = 2.225;
    String myText;
    myText = myNumber.toString();
    print(myText);
  }

//HOMEWORK

//1. Объявить переменные с помощью которых можно будет посчитать общую сумму покупки нескольких товаров. Например плитки шоколада, кофе и пакеты молока. Выведите в консоль общую сумму через созданную переменную
  int chocolate = 12;
  int coffee = 10;
  int milk = 15;
  int sum = chocolate + coffee + milk;
  print(sum);

//2.Объявить три переменные типа int и присвоить первой числовое значение, вторая переменная равна первой переменной увеличенной на 3, а третья переменная равна сумме первых двух.
  int c = Random().nextInt(100);
  print(c);
  int d = c + 3;
  int f = c + d;
  print('$c, $d, $f');
//3. Объявить переменные, для подсчета общего количества предметов для сервировки стола. Например чашки, такое же количество блюдец и ложек.
  int cups = 5;
  int spoon = cups;
  int plate = cups;
  int sumAll = cups + spoon + plate;
  print(sumAll);
}
