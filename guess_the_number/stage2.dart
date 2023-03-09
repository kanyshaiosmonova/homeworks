import 'dart:math';

void main() {
  final List<int> numbers = List.generate(100, (index) => Random().nextInt(1000));
  final List<int> linearResults = [];
  final List<int> binaryResults = [];

  for (int i = 0; i < numbers.length; i++) {
    final int target = numbers[i];
    final int linearSteps = linearSearch(numbers, target);
    final int binarySteps = binarySearch(numbers, target);
    linearResults.add(linearSteps);
    binaryResults.add(binarySteps);
    print('Target: $target');
    print('Linear Search: $linearSteps steps');
    print('Binary Search: $binarySteps steps');
  }

  final double linearAverage = calculateAverage(linearResults);
  final double binaryAverage = calculateAverage(binaryResults);

  print('Linear Search Average: $linearAverage steps');
  print('Binary Search Average: $binaryAverage steps');
}

int linearSearch(List<int> numbers, int target) {
  int steps = 0;
  for (int i = 0; i < numbers.length; i++) {
    steps++;
    if (numbers[i] == target) {
      return steps;
    }
  }
  return steps;
}

int binarySearch(List<int> numbers, int target) {
  int steps = 0;
  int min = 0;
  int max = numbers.length - 1;
  while (min <= max) {
    steps++;
    int mid = ((min + max) / 2).floor();
    if (numbers[mid] == target) {
      return steps;
    } else if (numbers[mid] < target) {
      min = mid + 1;
    } else {
      max = mid - 1;
    }
  }
  return steps;
}

double calculateAverage(List<int> numbers) {
  return numbers.reduce((a, b) => a + b) / numbers.length;
}
