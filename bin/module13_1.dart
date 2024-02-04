import 'dart:io';
void main() {
  // Example usage:
  //print(isFunny("sAD"));   // Output: No
  var input=stdin.readLineSync();
}

String isFunny(String s) {
  for (int i = 0; i < s.length; i++) {
    if (i % 2 == 0 && s[i].toUpperCase() != s[i]) {
      return "No";
    } else if (i % 2 == 1 && s[i].toLowerCase() != s[i]) {
      return "No";
    }
  }
  return "Yes";
}
