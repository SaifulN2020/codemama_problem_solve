void main() {
  // Reading input values
  List<int> input = [20, 40, 30, 35];
  int l1 = input[0], r1 = input[1], l2 = input[2], r2 = input[3];


  for (int i = l1; i < l2; i++) {
    print(i);
  }


  for (int i = r2 + 1; i <= r1; i++) {
    print(i);
  }
}