import 'dart:io';

void main() {
  // Taking input
  print("write here");
  String equation = stdin.readLineSync()!;
  print("input");

  // Parsing and calculating the result
  int result = calculateEquation(equation);

  // Printing the parsed equation along with the result
  print("$equation = $result");
}

int calculateEquation(String equation) {
  // Splitting the equation into operands and operator
  List<String> parts = equation.split(" ");
  int operand1 = int.parse(parts[0]);
  int operand2 = int.parse(parts[2]);
  String operator = parts[1];

  // Performing the arithmetic operation
  int result;
  switch (operator) {
    case "+":
      result = operand1 + operand2;
      break;
    case "-":
      result = operand1 - operand2;
      break;
    case "*":
      result = operand1 * operand2;
      break;
    case "/":
      result = operand1 ~/ operand2; // Using integer division for simplicity
      break;
    default:
      throw FormatException("Invalid operator: $operator");
  }

  return result;
}