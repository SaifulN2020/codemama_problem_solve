import 'dart:io';

void main() {
  // Input: Read the number of wheels, car bodies, and figures
  print("Enter the number of wheels, car bodies, and figures separated by space:");
  List<String> input = stdin.readLineSync()!.split(' ');

  // Extract values from the input list
  int numWheels = int.parse(input[0]);
  int numCarBodies = int.parse(input[1]);
  int numFigures = int.parse(input[2]);

  // Calculate the number of complete toy cars
  int numCars = calculateToyCars(numWheels, numCarBodies, numFigures);

  // Output: Print the result
  print("Number of complete toy cars that can be made: $numCars");
}

// Function to calculate the number of complete toy cars
int calculateToyCars(int numWheels, int numCarBodies, int numFigures) {
  // Calculate the minimum number of complete toy cars based on available parts
  int numCars = numWheels ~/ 4; // Divide by 4 because each car needs 4 wheels
  numCars = numCars > numCarBodies ? numCarBodies : numCars; // Limit by available car bodies
  numCars = numCars > numFigures ~/ 2 ? numFigures ~/ 2 : numCars; // Limit by available figures

  return numCars;
}
