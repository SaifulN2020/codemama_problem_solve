import 'dart:io';

void main() {
  // Input
  int N = int.parse(stdin.readLineSync()!);
  String S = stdin.readLineSync()!;

  // Function call to determine the number of tiles needed to be removed
  int removedTiles = removeConsecutiveTiles(N, S);

  // Output the result
  print(removedTiles);
}

int removeConsecutiveTiles(int N, String S) {
  int count = 0;

  // Loop through the colors of tiles
  for (int i = 1; i < N; i++) {
    // If the current color is the same as the previous one, increment the count
    if (S[i] == S[i - 1]) {
      count++;
    }
  }

  return count;
}
