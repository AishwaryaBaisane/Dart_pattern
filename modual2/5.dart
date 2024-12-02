//  Define an abstract class `Shape` with pure virtual functions `calculateArea()` and `draw()`. 
//Implement concrete/normal classes `Circle` and `Rectangle` that inherit from `Shape`. 
//Demonstrate polymorphism by creating an array of `Shape` pointers pointing to objects of both `Circle` and `Rectangle`.
// Call the `calculateArea()` and `draw()` functions for each object.
// Abstract class Shape
abstract class Shape {
  // Abstract method to calculate area
  double calculateArea();

  // Abstract method to draw the shape
  void draw();
}

// Derived class Circle
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14159 * radius * radius; // Area formula for a circle
  }

  @override
  void draw() {
    print("Drawing a Circle with radius: $radius");
  }
}

// Derived class Rectangle
class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width; // Area formula for a rectangle
  }

  @override
  void draw() {
    print("Drawing a Rectangle with length: $length and width: $width");
  }
}

void main() {
  // Create objects of Circle and Rectangle
  Shape circle = Circle(5);
  Shape rectangle = Rectangle(10, 4);

  // Store them in an array of Shape pointers
  List<Shape> shapes = [circle, rectangle];

  // Demonstrate polymorphism
  for (var shape in shapes) {
    shape.draw();
    print("Area: ${shape.calculateArea().toStringAsFixed(2)}\n");
  }
}
