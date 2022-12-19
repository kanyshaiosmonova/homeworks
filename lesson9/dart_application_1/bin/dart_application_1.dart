//Switch, case,do while
import 'dart:io';

void main() {
  // int a = Random().nextInt(5);
  // print(a);

  // switch (a) {
  //   case 1:
  //     {
  //       print('Bolwoy palec');
  //       break;
  //     }
  //   case 2:
  //     {
  //       print('Ukazatelnyi palec');
  //       break;
  //     }
  //   case 3:
  //     {
  //       print('Srendii palec');
  //       break;
  //     }
  //   case 4:
  //     {
  //       print('Bezymannyi palec');
  //       break;
  //     }
  //   case 5:
  //     {
  //       print('Mizinec');
  //       break;
  //     }
  //   default:
  //     print('error');
  // }

  // String a = 'green';
  // print(a);
  // switch (a) {
  //   case 'red':
  //     {
  //       print('stop');
  //       break;
  //     }
  //   case 'green':
  //     {
  //       print('go');
  //       break;
  //     }
  //   case 'yellow':
  //     {
  //       print('wait');
  //       break;
  //     }
  //   default:
  //     print('error');
  // }

  // int i = 10;
  // int b = 20;
  // int summ = 0;

  // do {
  //   summ += i;
  //   i++;
  // } while (i <= b);
  // print(summ);

  // int i = 1;
  // int n = 12;
  // double summ = 1000;

  // while (i <= n) {
  //   summ += summ * 0.03;
  //   print(summ);
  //   i++;
  // }
  // print(summ);

  String ? a;

  // while (a != 'stop') {
  //   print('Введите что-нибудь,  для выхода введите stop');
  //   a = stdin.readLineSync()!;
  //   print(a);
  // }

  do{
    print('Введите что-нибудь,  для выхода введите stop');
    a = stdin.readLineSync()!;
    print(a);
  }while( a != 'stop');
    void func(String a){
      if(a!= 'stop'){
        print('Введите что-нибудь,  для выхода введите stop');
        a = stdin.readLineSync()!;
        func(a);
      } else {
        print('end');
      }
    }
    func(a);
  }

