import 'dart:io';
void main() {
  List<int> input = stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  int start = input[0];
  int end = input[1];

  int duration;
  if (start <= end) {
    duration = end - start;
  } else {
    duration = 24 - start + end;
  }
  print(duration);
}