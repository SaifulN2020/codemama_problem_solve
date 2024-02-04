
import 'dart:io';

void main() {

  List<String> input = stdin.readLineSync()!.split(' ');
  String s = input[0];
  int k = int.parse(input[1]);

  String result = minimizeString(s, k);

  print('Min = $result');
}

String minimizeString(String s, int k) {
  List<int> digits = s.runes.map((rune) => int.parse(String.fromCharCode(rune))).toList();

  for (int i = 0; i < digits.length; i++) {
    if (i == 0 && digits[i] > 1) {
      digits[i] = 1;
      k--;
    } else if (i > 0 && digits[i] > 0) {
      digits[i] = 0;
      k--;
    }

    if (k == 0) {
      break;
    }
  }

  String result = digits.join();
  return result;
}
