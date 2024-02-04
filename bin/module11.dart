import 'dart:io';
void main() {
  String inputString =stdin.readLineSync()! ;
  String transformedString = transformString(inputString);

  print(transformedString);


}

String transformString(String input) {
  List<String> characters = input.split('');
  int length = characters.length;

  for (int i = 2; i < length; i += 3) {
    characters[i] = characters[i].toUpperCase();
  }

  return characters.join();
}
