import 'dart:io';

void main() {
  // Reading input from the user
  print("Enter two numbers separated by space (A B):");
  String input = stdin.readLineSync()!;
  List<String> inputList = input.split(' ');

  // Parsing input values
  int fieldA = int.parse(inputList[0]);
  int fieldB = int.parse(inputList[1]);

  // Ensuring fieldA is smaller than fieldB
  if (fieldA > fieldB) {
    int temp = fieldA;
    fieldA = fieldB;
    fieldB = temp;
  }

  // Calculate the total number of plants in fields with odd number of plants
  int totalPlants = 0;
  for (int i = fieldA; i <= fieldB; i++) {
    if (i % 2 != 0) {
      totalPlants += i * i;
    }
  }

  // Output the result
  print("Total number of plants in fields with odd number of plants between Field $fieldA and Field $fieldB: $totalPlants");
}
