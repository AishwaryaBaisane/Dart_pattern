
// Define a base class Shape with private attributes color and area. 
//Implement public member functions for setting and getting the color and calculating the area. 
//Derive two classes, Circle and Rectangle, from the Shape class. 
//Implement methods to calculate the area specific to each shape. 
//Demonstrate abstraction by calling the area calculation methods for both Circle and Rectangle.


import 'dart:io';

abstract class Shape {
  String? _color;
  double? _area;

  void set color(String color) {
    _color = color;
  }

  String get color => _color!;



  double get area => _area!;

  void calculateArea();
}

class Circle extends Shape {
  double? _radius;

  
  void set radius(double radius) {
    _radius = radius;
  }

  
  double get radius => _radius!;

  @override
  void calculateArea() {
    _area = 3.14 * _radius! * _radius!;
  }
}

class Rectangle extends Shape {
  double? _length;
  double? _width;

  void set length(double length) {
    _length = length;
  }

  void set width(double width) {
    _width = width;
  }


  double get length => _length!;
  double get width => _width!;

  @override
  void calculateArea() {
    _area = _length! * _width!;
  }
}

void main() {

  Circle circle = Circle();
  stdout.write('Enter the color of the circle:');
  circle.color = stdin.readLineSync()!;

  stdout.write('Enter the radius of the circle:');
  circle.radius = double.parse(stdin.readLineSync()!);

  circle.calculateArea();


  Rectangle rectangle = Rectangle();
  stdout.write('Enter the color of the rectangle:');
  rectangle.color = stdin.readLineSync()!;

  stdout.write('Enter the length of the rectangle:');
  rectangle.length = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the width of the rectangle:');
  rectangle.width = double.parse(stdin.readLineSync()!);

  rectangle.calculateArea();

  
  print("\nCircle Details:");
  print("Color: ${circle.color}");
  print("Radius: ${circle.radius}");
  print("Area: ${circle.area}");

  print("\nRectangle Details:");
  print("Color: ${rectangle.color}");
  print("Length: ${rectangle.length}");
  print("Width: ${rectangle.width}");
  print("Area: ${rectangle.area}");
}
