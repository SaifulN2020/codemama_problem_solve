import 'dart:io';

void main() {


  List<String> input = stdin.readLineSync()!.split(" ");
  int startTime = int.parse(input[0]);
  int endTime = int.parse(input[1]);


  int duration = calculateDuration(startTime, endTime);

  print(duration);
}

int calculateDuration(int startTime, int endTime) {

  if (endTime <= startTime) {
    return 24 - startTime + endTime;
  } else {
    return endTime - startTime;
  }
}