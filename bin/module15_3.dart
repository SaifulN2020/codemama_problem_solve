import 'dart:io';

void main() {
  // Input
  List<int> input = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int W = input[0];
  int S = input[1];
  int C = input[2];

  // Function call to determine if the cake can be chosen
  String result = chooseCake(W, S, C);

  // Output the result
  print(result);
}

String chooseCake(int W, int S, int C) {
  if (W >= 200 && W <= 300 && S >= 50 && C >= 150) {
    return "Yes"; // Cake can be chosen
  } else {
    return "No"; // Cake cannot be chosen
  }
}
