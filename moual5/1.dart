// Create a class `Laptop` with private attributes `name`, `price`, `processor`, and a parameterized constructor.
// Demonstrate the instantiation of objects using this constructor.


import 'dart:io';

class Laptop {

  String _name;
  double _price;
  String _processor;

  Laptop(this._name, this._price, this._processor);

  void displayDetails() {
    print('Laptop Name: $_name');
    print('Price: \$$_price');
    print('Processor: $_processor');
  }
}

void main() {


  print('Enter the laptop name:');
  String? name = stdin.readLineSync();

  print('Enter the laptop price:');
  double? price = double.tryParse(stdin.readLineSync() ?? '');

  print('Enter the laptop processor:');
  String? processor = stdin.readLineSync();

  if (name != null && price != null && processor != null) {
    Laptop laptop = Laptop(name, price, processor);

    print('\nLaptop Details:');
    laptop.displayDetails();
  } else {
    print('Invalid input! Please provide valid details.');
  }
}
