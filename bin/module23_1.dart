import 'dart:io';

void main() {
  print("Enter the temperature in Celsius:");
  double celsius = double.parse(stdin.readLineSync()!);

  double fahrenheit = (celsius * 9 / 5) + 32;

  print("The temperature in Fahrenheit is: ${fahrenheit.toStringAsFixed(2)}");
}
