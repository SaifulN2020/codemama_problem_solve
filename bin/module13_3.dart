import 'dart:io';


double calculateFinalPrice(int originalPrice, int discountPercentage) {
  double discount = originalPrice * (discountPercentage / 100);
  double finalPrice = originalPrice - discount;
  return finalPrice;
}

void main() {

  print("Enter the original price and discount percentage separated by space:");
  List<String> input = stdin.readLineSync()!.split(' ');

  int originalPrice = int.parse(input[0]);
  int discountPercentage = int.parse(input[1]);


  double finalPrice = calculateFinalPrice(originalPrice, discountPercentage);


  print(finalPrice.toStringAsFixed(2));
}
