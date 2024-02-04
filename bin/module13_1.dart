import 'dart:io';

void main() {
  // Input: Read the string
  print("Enter the string:");
  String inputString = stdin.readLineSync()!;

  // Check if the string is funny
  bool isFunny = isFunnyString(inputString);

  // Output: Print the result
  if (isFunny) {
    print("Yes");
  } else {
    print("No");
  }
}

// Function to check if the string is funny
bool isFunnyString(String s) {
  for (int i = 0; i < s.length; i++) {
    if (i % 2 == 0) {
      // Odd positioned characters (0-based) should be lowercase letters
      if (!isLowerCaseLetter(s[i])) {
        return false;
      }
    } else {
      // Even positioned characters should be uppercase letters
      if (!isUpperCaseLetter(s[i])) {
        return false;
      }
    }
  }
  return true;
}

// Helper function to check if a character is a lowercase letter
bool isLowerCaseLetter(String character) {
  return character.toLowerCase() == character;
}

// Helper function to check if a character is an uppercase letter
bool isUpperCaseLetter(String character) {
  return character.toUpperCase() == character;
}
