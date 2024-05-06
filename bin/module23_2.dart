import 'dart:io';

void main() {
  print("Enter three numbers separated by spaces:");
  String input = stdin.readLineSync()!;

  List<String> numbers = input.split(' ');

  double num1 = double.parse(numbers[0]);
  double num2 = double.parse(numbers[1]);
  double num3 = double.parse(numbers[2]);

  double average = (num1 + num2 + num3) / 3;

  print("Average: ${average.toStringAsFixed(2)}");
}
