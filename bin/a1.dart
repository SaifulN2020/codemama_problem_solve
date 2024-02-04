import 'dart:io';

void main() {
  print("Enter the fruit code : ");
  String aa = stdin.readLineSync()!;
  Map<String, String> list = {
    "31231": "banana",
    "43861": "Elderberry",
    "82678": "Honeydew melon",
    "23456": "Apple",
    "78901": "Nectarine",
    "45678": "Orange",
    "67890": "Raspberry",
    "21098": "Tangerine"
  };
  print(list[aa]);
  int? a;
  if (a == 31231) {
    print("Fruits");
  } else if (a == 43861) {
    print("Elderberry");
  } else if (a == 82678) {
    print("Honeydew melon");
  } else if (a == 23456) {
    print("Apple");
  } else if (a == 78901) {
    print("Nectarine");
  } else {
    print("nothing");
  }
}
