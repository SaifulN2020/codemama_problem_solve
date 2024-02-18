import 'dart:io';

void main() {
  // Reading input
  String input = stdin.readLineSync()!;
  List<String> inputList = input.split(' ');

  // Parsing length of the array
  int length = int.parse(inputList[0]);

  // Initializing a variable to count the number of true values
  int trueCount = 0;

  // Loop through the array elements and count the number of true values
  for (int i = 1; i <= length; i++) {
    if (inputList[i] == '1') {
      trueCount++;
    }
  }

  // Printing the result
  print(trueCount);
}
