import 'dart:io';
void main() {
  // Write your dart code from here
  const int tw=300;
  String input = stdin.readLineSync()!;
  int sw= int.parse(input);
  int answer= (sw-tw)~/2;
  if(answer<0){
    answer=0;
  }
  print(answer);
}