void main() {
  square(5);
  sum(7, 15);
  mathTask(25, 10, 3);
  minIntoSec(45);
  print(array([1, 3, 4, 5, 6]));
  print(printMyBool('Wednesday'));
  print(myFunction(0));
}

// 1.Сделайте функцию, которая возвращает квадрат числа. Число передается параметром.
void square(int a) {
  print(a * a);
}

//2.Сделайте функцию, которая возвращает сумму двух чисел.
void sum(int b, int c) {
  print(b + c);
}

//3.Сделайте функцию, которая отнимает от первого числа второе и делит на третье.
void mathTask(int d, int e, int f) {
  print((d - e) / f);
}

//4.Напишите функцию, которая принимает целые минуты и преобразует их в секунды.
void minIntoSec(int minute) {
  print(minute * 60);
}

//5.Есть массив, List array = [1, 3, 4, 5, 6]; возвратите его первый элемент
int array(myArray) {
  return myArray[0];
}

//6.Создайте bool переменную и напишите условие (if…else), выведите сообщение «Переменная имеет значение (значение вашей переменной)
bool printMyBool(day) {
  if (day == 'Tuesday') {
    return true;
  } else {
    return false;
  }
}

//7.Создайте функцию, которая принимает число в качестве единственного аргумента и возвращает true, если оно меньше или равно нулю, в противном случае возвращает false
bool myFunction(int q) {
  if (q <= 0) {
    return true;
  } else {
    return false;
  }
}
