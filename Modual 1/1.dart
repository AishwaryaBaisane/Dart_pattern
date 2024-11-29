// Define a class named Rectangle with private attributes length and width.
// Implement public member functions to set and get the values of these attributes. 
// Include a method to calculate the area of the rectangle.
// Create an object of the Rectangle class and demonstrate the functionality of the implemented methods.

// Define the Rectangle class
class Rectangle {
  // Private attributes
  double _length = 0;
  double _width = 0;

  // Setter for length
  void setLength(double length) {
    if (length > 0) {
      _length = length;
    } else {
      print('Length must be greater than zero');
    }
  }

  // Getter for length
  double getLength() {
    return _length;
  }

  // Setter for width
  void setWidth(double width) {
    if (width > 0) {
      _width = width;
    } else {
      print('Width must be greater than zero');
    }
  }

  // Getter for width
  double getWidth() {
    return _width;
  }

  // Method to calculate the area of the rectangle
  double calculateArea() {
    return _length * _width;
  }
}

void main() {
  // Create an object of the Rectangle class
  Rectangle rectangle = Rectangle();

  // Set the length and width using setters
  rectangle.setLength(10);
  rectangle.setWidth(5);

  // Get and display the length and width
  print('Length: ${rectangle.getLength()}');
  print('Width: ${rectangle.getWidth()}');

  // Calculate and display the area
  print('Area of the Rectangle: ${rectangle.calculateArea()}');
}
