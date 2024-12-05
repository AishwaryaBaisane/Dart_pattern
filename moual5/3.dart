//  Define a base class `Shape` with private attributes `color` and `area`.
// Implement public methods for setting and getting these attributes. Derive two classes, `Circle` and `Rectangle`, from the `Shape` class.
// Implement methods to calculate the area specific to each shape.
// Demonstrate abstraction by calling the area calculation methods for both `Circle` and `Rectangle`.

import 'dart:io';
import 'dart:math';

abstract class Shape {
  String _color;
  double _area;

  Shape(this._color) : _area = 0.0;

  String get color => _color;
  set color(String color) => _color = color;

  double get area => _area;

  void calculateArea();
}

class Circle extends Shape 
{
  double radius;

  Circle(String color, this.radius) : super(color);

  @override
  void calculateArea() {
    _area = pi * radius * radius;
  }
}

class Rectangle extends Shape 
{
  double length;
  double width;

  Rectangle(String color, this.length, this.width) : super(color);

  @override
  void calculateArea() {
    _area = length * width;
  }
}

void main() {
 

while(true)
{
   print('Choose a shape to calculate area:');
  print('1. Circle');
  print('2. Rectangle');
  print('3. Exit');
  int? choice = int.tryParse(stdin.readLineSync() ?? '');
  switch (choice) {
    case 1:
      print('Enter the color of the circle:');
      String? color = stdin.readLineSync();

      print('Enter the radius of the circle:');
      double? radius = double.tryParse(stdin.readLineSync() ?? '');

      if (color != null && radius != null) {
        Circle circle = Circle(color, radius);
        circle.calculateArea();
        print('\nCircle Details:');
        print('Color: ${circle.color}');
        print('Radius: ${circle.radius}');
        print('Area: ${circle.area.toStringAsFixed(2)}');
      } else {
        print('Invalid input!');
      }
      break;

    case 2:
      print('Enter the color of the rectangle:');
      String? color = stdin.readLineSync();

      print('Enter the length of the rectangle:');
      double? length = double.tryParse(stdin.readLineSync() ?? '');

      print('Enter the width of the rectangle:');
      double? width = double.tryParse(stdin.readLineSync() ?? '');

      if (color != null && length != null && width != null) {
        Rectangle rectangle = Rectangle(color, length, width);
        rectangle.calculateArea();
        print('\nRectangle Details:');
        print('Color: ${rectangle.color}');
        print('Length: ${rectangle.length}');
        print('Width: ${rectangle.width}');
        print('Area: ${rectangle.area.toStringAsFixed(2)}');
      } else {
        print('Invalid input!');
      }
      break;
        case 3:
        print('Thank you for using the bank account system!');
        return;

    default:
      print('Invalid choice! Please select 1 or 2.');
  }
}
}


