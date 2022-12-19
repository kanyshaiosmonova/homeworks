//Switch, case,do while
import 'dart:math';

void main() {
  int a = Random().nextInt(5);
  print(a);

  switch (a) {
    case 1:
      {
        print('Bolwoy palec');
        break;
      }
    case 2:
      {
        print('Ukazatelnyi palec');
        break;
      }
    case 3:
      {
        print('Srendii palec');
        break;
      }
    case 4:
      {
        print('Bezymannyi palec');
        break;
      }
    case 5:
      {
        print('Mizinec');
        break;
      }
    default:
      print('error');
  }
}
