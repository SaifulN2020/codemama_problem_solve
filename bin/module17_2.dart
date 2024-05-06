import 'dart:io';

void main() {
  // Read input from the user
  print("Enter six numbers separated by space:");
  String input = stdin.readLineSync()!;

  // Split the input string and parse each number as integers
  List<String> inputs = input.split(" ");
  List<int> answers = inputs.map(int.parse).toList();

  // Count the number of correct answers
  int correctCount = countCorrectAnswers(answers);

  // Output the result
  print("Number of students who are correct: $correctCount");
}

int countCorrectAnswers(List<int> answers) {
  int correctCount = 0;
  for (int i = 0; i < answers.length; i++) {
    // Check if the answer is even
    if (answers[i] % 2 == 0) {
      correctCount++; // Increment the count if the answer is even
    }
  }
  return correctCount;
}
