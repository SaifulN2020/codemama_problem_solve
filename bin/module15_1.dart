import 'dart:io';

void main() {
  // Input from the user
  print("Enter the number of minutes left, minutes to complete assignment A, and minutes to complete assignment B separated by spaces:");
  String input = stdin.readLineSync()!;
  List<String> inputs = input.split(" ");

  // Parsing input values
  int N = int.parse(inputs[0]);
  int A = int.parse(inputs[1]);
  int B = int.parse(inputs[2]);

  // Function call to determine if both assignments can be completed
  String result = canCompleteAssignments(N, A, B);

  // Output the result
  print(result);
}

String canCompleteAssignments(int N, int A, int B) {
  // Calculate the total time needed to complete both assignments
  int totalAssignmentTime = A + B;

  // Check if the total assignment time is less than or equal to the time left
  if (totalAssignmentTime <= N) {
    return "Yes"; // Both assignments can be completed today
  } else {
    return "No"; // Both assignments cannot be completed today
  }
}
