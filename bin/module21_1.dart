import 'dart:io';

int binarySearchFirstOccurrence(List<int> arr, int target) {
  int low = 0;
  int high = arr.length - 1;
  int result = -1;

  while (low <= high) {
    int mid = low + ((high - low) ~/ 2);

    if (arr[mid] == target) {
      result = mid;
      high = mid - 1; // Look for the target in the left half
    } else if (arr[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return result;
}

void main() {
  // Input
  print("Enter the size of the array:");
  int N = int.parse(stdin.readLineSync()!);

  print("Enter the sorted array elements:");
  List<int> arr = stdin.readLineSync()!
      .split(' ')
      .map((e) => int.parse(e))
      .toList();

  print("Enter the target value:");
  int target = int.parse(stdin.readLineSync()!);

  // Binary search for the first occurrence
  int index = binarySearchFirstOccurrence(arr, target);

  // Output
  if (index != -1) {
    print("Index of the first occurrence of $target: $index");
  } else {
    print("Element not found");
  }
}
