// Write a Program to add two distances using binary plus (+) operator overloading.

// For example,
// Input:
// input1 => Km: 3, Meter: 1020
// input2 => Km: 2, Meter: 2050

// Output:
// Km: 8, Meter: 70


import 'dart:io';

class Distance {
  int kilometers;
  int meters;

  Distance(this.kilometers, this.meters);

  Distance operator +(Distance other) {
    int totalMeters = this.meters + other.meters;
    int carryKilometers = totalMeters ~/ 1000;
    totalMeters %= 1000; 
    int totalKilometers = this.kilometers + other.kilometers + carryKilometers;

    return Distance(totalKilometers, totalMeters);
  }

  void display() {
    print('Km: $kilometers, Meter: $meters');
  }
}

void main() {
  print('Enter the first distance:');
  print('Kilometers:');
  int? km1 = int.tryParse(stdin.readLineSync() ?? '');
  print('Meters:');
  int? m1 = int.tryParse(stdin.readLineSync() ?? '');

  print('Enter the second distance:');
  print('Kilometers:');
  int? km2 = int.tryParse(stdin.readLineSync() ?? '');
  print('Meters:');
  int? m2 = int.tryParse(stdin.readLineSync() ?? '');

  if (km1 != null && m1 != null && km2 != null && m2 != null) {
    Distance d1 = Distance(km1, m1);
    Distance d2 = Distance(km2, m2);

    Distance result = d1 + d2;

    print('\nResultant Distance:');
    result.display();
  } else {
    print('Invalid input! Please enter valid integers for kilometers and meters.');
  }
}
