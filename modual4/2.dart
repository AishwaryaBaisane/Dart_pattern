void main() {
  // Creating an instance of Car
  Car myCar = Car();

  // Setting values using setter methods
  myCar.setModel("Tesla Model S");
  myCar.setYear(2023);
  myCar.setSpeed(120);

  // Accessing values using getter methods
  print("Car Details:");
  print("Model: ${myCar.getModel()}");
  print("Year: ${myCar.getYear()}");
  print("Speed: ${myCar.getSpeed()} km/h");
}

class Car {
  // Private attributes
  String _model = '';
  int _year = 0;
  int _speed = 0;

  // Setter for model
  void setModel(String model) {
    _model = model;
  }

  // Getter for model
  String getModel() {
    return _model;
  }

  // Setter for year
  void setYear(int year) {
    if (year > 1885) { // Cars were invented after 1885
      _year = year;
    } else {
      print("Invalid year!");
    }
  }

  // Getter for year
  int getYear() {
    return _year;
  }

  // Setter for speed
  void setSpeed(int speed) {
    if (speed >= 0) {
      _speed = speed;
    } else {
      print("Speed cannot be negative!");
    }
  }

  // Getter for speed
  int getSpeed() {
    return _speed;
  }
}
