import 'dart:io';

void main() {
  // Read input
  String input = stdin.readLineSync()!;
  List<int> inputs = input.split(' ').map(int.parse).toList();

  int N = inputs[0]; // Total steps
  int X = inputs[1]; // Time taken for each step

  // Calculate the total time
  int totalTime = 0;
  for (int i = 1; i <= N; i++) {
    totalTime += (i * X); // Time taken for step i
    if (i != N) {
      totalTime += i; // Rest time after step i
    }
  }

  // Output the result
  print(totalTime);
}
