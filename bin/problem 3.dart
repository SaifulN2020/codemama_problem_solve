import 'dart:io';

void main() {

  print("Enter the width of the image:");
  int? imageWidth = int.parse(stdin.readLineSync()!);


  int containerWidth = 1000;

  int leftMargin = (containerWidth - imageWidth) ~/ 2;


  print("Left Margin for the Image: $leftMargin pixels");
}