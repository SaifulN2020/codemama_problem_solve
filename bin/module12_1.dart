
import 'dart:io';
void main() {

  List<int> abc = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  String order = stdin.readLineSync()!;


  for (int i = 0; i < order.length; i++) {
    if (order[i] == 'A') {
      swap(abc, 0, 1);
    } else if (order[i] == 'B') {
      swap(abc, 1, 2);
    } else if (order[i] == 'C') {
      swap(abc, 2, 0);
    }
  }


  print('${abc[0]} ${abc[1]} ${abc[2]}');
}

void swap(List<int> list, int index1, int index2) {
  int temp = list[index1];
  list[index1] = list[index2];
  list[index2] = temp;
}
