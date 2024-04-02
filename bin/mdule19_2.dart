import 'dart:io';

void main() {
  // Taking input from the user
  print("Enter the string:");
  String inputString = stdin.readLineSync()!;

  // Counting unique characters
  int uniqueCharacters = countUniqueCharacters(inputString);

  // Outputting the result
  print("Number of unique characters: $uniqueCharacters");
}

int countUniqueCharacters(String str) {
  Set<String> uniqueChars = Set<String>();

  // Adding each character to the set to ensure uniqueness
  for (int i = 0; i < str.length; i++) {
    uniqueChars.add(str[i]);
  }

  // Returning the size of the set, which represents the count of unique characters
  return uniqueChars.length;
}
