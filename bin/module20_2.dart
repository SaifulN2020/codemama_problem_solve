import 'dart:io';

void main() {
  // Read input
  int N = int.
   parse(stdin.readLineSync()!);
  List<String> strings = [];
  for (int i = 0; i < N; i++) {
    strings.add(stdin.readLineSync()!);
  }

  // Find full forms of FFT
  List<String> fullForms = [];
  int count = 0;
  for (int i = 0; i < strings.length - 2; i++) {
    if (strings[i][0] == 'F' && strings[i + 1][0] == 'F' && strings[i + 2][0] == 'T') {
      count++;
      fullForms.add('${strings[i]} ${strings[i + 1]} ${strings[i + 2]}');
    }
  }

  // Output the result
  print(count);
  for (String form in fullForms) {
    print(form);
  }
}
