import 'dart:io';

void main() {
  var input = stdin.readLineSync()!;
  List<String> inputList = input.split(' ');

  var id = int.parse(inputList[0]);
  var quantity = int.parse(inputList[1]);

  if (id == 101) {
    print(quantity * 10);
  } else if (id == 202) {
    print(quantity * 25);
  } else if (id == 303) {
    print(quantity * 5);
  } else {
    print("Nothing");
  }
}

  // Map <int ,int>list={
  //   101:10,
  //   202":"25",
  //   "303":"5",
  // };
  // int ans=
  // print(list[num]);


