import 'dart:io';

int binarySearch(List<int> arr, int target) {
  int low = 0;
  int high = arr.length - 1;
  int result = -1;

  while (low <= high) {
    int mid = low + ((high - low) ~/ 2);

    if (arr[mid] == target) {
      result = mid;
      high = mid - 1; // continue searching on the left side for the first occurrence
    } else if (arr[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return result;
}

void main() {
  stdout.write("Enter the size of the array: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr = [];
  for (int i = 0; i < n; i++) {
    stdout.write("Enter element $i: ");
    arr.add(int.parse(stdin.readLineSync()!));
  }

  stdout.write("Enter the target value: ");
  int target = int.parse(stdin.readLineSync()!);

  int index = binarySearch(arr, target);
  if (index != -1) {
    print("Index of the first occurrence of $target is: $index");
  } else {
    print("Element not found");
  }
}


