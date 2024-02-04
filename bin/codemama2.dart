import 'dart:io';

void main() {
  // Taking inputs
  String dressCode = stdin.readLineSync()!;
  int temperature = int.parse(stdin.readLineSync()!);

  // Suggesting outfit based on dress code and temperature
  String outfit = suggestOutfit(dressCode, temperature);

  // Printing the result
  print(outfit);
}

String suggestOutfit(String dressCode, int temperature) {
  if (dressCode == "casual" && temperature >= 15 && temperature <= 25) {
    return "Jeans and a light jacket.";
  } else if (dressCode == "festive" && temperature > 25) {
    return "Colorful dress and sandals.";
  } else {
    return "Wear what you're comfortable in.";
  }
}