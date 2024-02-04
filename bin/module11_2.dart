import 'dart:io';

void main() {

  String line = stdin.readLineSync()!;
  List l = line.split("");
  for (int i = 2; i < l.length; i += 3) {
    l.insert(i, "x");
  }
  print(l.join());
}
