import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<int> dice = [1, 2, 3, 4, 5, 6];
  List<int> playerScore = [0, 0, 0];
  List<int> compScore = [0, 0, 0];
  print('Round 1');
  playRound('Player', playerScore[0], dice);
  playRound('Comp', compScore[0], dice);
  compareScores(playerScore[0], compScore[0]);
}

void compareScores(int player, int comp) {
  if (player > comp) {
    print('Player won');
  } else if (player < comp) {
    print('Comp won');
  } else {
    print('Draw');
  }
}

int playRound(String name, int score, List<int> dice) {
  print('Now is ${name}s turn, if you are ready type yes');
  String a = stdin.readLineSync()!;
  if (a == 'yes') {
    score = tossDice(dice);
    print('You got $score');
    return score;
  } else {
    print('You are not ready, you got 0');
    return 0;
  }
}

tossDice(List<int> a) {
  int r = Random().nextInt(6 - 0);
  print(a[r]);
  return a[r];
}
