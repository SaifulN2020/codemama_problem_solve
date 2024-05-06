// import 'dart:io';
//
// void main() {
//
//   int n = int.parse(stdin.readLineSync()!);
//   List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();
//
//
//   Map<int, int> frequencyMap = countFrequency(numbers);
//
//
//   List<MapEntry<int, int>> sortedFrequency = frequencyMap.entries.toList();
//   sortedFrequency.sort((a, b) {
//     if (a.value != b.value) {
//       return a.value.compareTo(b.value);
//     } else {
//       return numbers.indexOf(a.key).compareTo(numbers.indexOf(b.key));
//     }
//   });
//
//
//   print(sortedFrequency.length);
//   for (var entry in sortedFrequency) {
//     print("${entry.key} ${entry.value}");
//   }
// }
//
// Map<int, int> countFrequency(List<int> numbers) {
//   Map<int, int> frequencyMap = {};
//
//   for (int num in numbers) {
//     if (frequencyMap.containsKey(num)) {`
//       frequencyMap[num] = frequencyMap[num]! + 1;
//     } else {
//       frequencyMap[num] = 1;
//     }
//   }
//
//   return frequencyMap;
// }


import 'dart:io';

void main() {
  String numString = stdin.readLineSync()!;
  int num = int.parse(numString);
  String input = stdin.readLineSync()!;
  List<String> ls = input.split(' ');
  List<int> l = [], s = [];
  int k = 0, p = 0;
  for (int i = 0; i < num; i++) {
    k = int.parse(ls[i]);
    p=l.indexOf(k);
    if (p == -1) {
      l.add(k);
      s.add(1);
    } else {
      s[p]++;
    }
  }
  print(l.length);
  for (int i = 1; i <= num; i++) {
    for (int j = 0; j < s.length; j++) {
      if (i == s[j]) {
        print('${l[j]} ${s[j]}');
      }
    }
  }
}