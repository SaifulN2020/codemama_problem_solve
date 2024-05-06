import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  List<String> numbers = input.split(' ');

  int num1 = int.parse(numbers[0]);
  int num2 = int.parse(numbers[1]);
  int num3 = int.parse(numbers[2]);

  int max = num1;

  if (num2 > max) {
    max = num2;
  }
  if (num3 > max) {
    max = num3;
  }

  print(max);
}
