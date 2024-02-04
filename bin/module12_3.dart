import 'dart:io';

void main() {


  List<String> startTime = stdin.readLineSync()!.split(' ');
  int startTimeTime =int.parse(startTime[0]);
  int endTime=int.parse(startTime[1]);



  // Calculate duration
  int duration = calculateDuration(startTimeTime, endTime);

  // Output the result
  print(duration);
}

int calculateDuration(int startTime, int endTime) {
  // Handling cases where the shift crosses over to the next day
  if (endTime < startTime) {
    // Calculate duration for the remaining hours of the first day
    int remainingHoursOfDay1 = 24 - startTime;

    // Add the start time of the next day to calculate the total duration
    return remainingHoursOfDay1 + endTime;
  } else {
    // Calculate duration for a shift within the same day
    return endTime - startTime;
  }
}
