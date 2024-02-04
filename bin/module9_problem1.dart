import 'dart:io';

void main() {
  List<String> strings = [];

  // Read 10 strings
  for (int i = 0; i < 10; i++) {
    print("Enter string ${i + 1}: ");
    String input = stdin.readLineSync()!;
    strings.add(input);
  }

  // Count strings containing 'T'
  int count = countStringsWithT(strings);

  // Print the result
  print("Output:");
  print(count);
}

int countStringsWithT(List<String> strings) {
  int count = 0;

  for (String str in strings) {
    if (str.contains('T')) {
      count++;
    }
  }

  return count;
}