import 'dart:io';

void main() {
  // Input: Read the length of the array
  print("Enter the length of the array:");
  int length = int.parse(stdin.readLineSync()!);

  // Input: Read the boolean values
  print("Enter the boolean values separated by space:");
  List<bool> boolArray = List.generate(
     length, (index) => stdin.readLineSync()!.toLowerCase() == 'true');

  // Count the number of true values
  int trueCount = boolArray.where((element) => element == true).length;

  // Output: Print the result
  print("Number of true values in the array: $trueCount");
}
