// Base class Vehicle
abstract class Vehicle {
  // Private attributes
  String _model;
  double _speed;

  // Constructor
  Vehicle(this._model, this._speed);

  // Getter and setter for model
  String get model => _model;
  set model(String model) {
    _model = model;
  }

  // Getter and setter for speed
  double get speed => _speed;
  set speed(double speed) {
    if (speed > 0) {
      _speed = speed;
    } else {
      print("Speed must be positive.");
    }
  }

  // Virtual function for displaying details (abstract method)
  void displayDetails();

  // Method to calculate time for a given distance
  double calculateTime(double distance) {
    if (_speed > 0) {
      return distance / _speed;
    } else {
      print("Speed must be greater than zero.");
      return 0;
    }
  }
}

// Derived class Car
class Car extends Vehicle {
  int numberOfDoors;

  Car(String model, double speed, this.numberOfDoors) : super(model, speed);

  // Override displayDetails
  @override
  void displayDetails() {
    print("Vehicle Type: Car");
    print("Model: $model");
    print("Speed: $speed km/h");
    print("Number of Doors: $numberOfDoors");
  }
}

// Derived class Bike
class Bike extends Vehicle {
  String bikeType;

  Bike(String model, double speed, this.bikeType) : super(model, speed);

  // Override displayDetails
  @override
  void displayDetails() {
    print("Vehicle Type: Bike");
    print("Model: $model");
    print("Speed: $speed km/h");
    print("Bike Type: $bikeType");
  }
}

void main() {
  // Create objects for Car and Bike
  Vehicle car = Car("Tesla Model S", 120, 4);
  Vehicle bike = Bike("Yamaha R15", 80, "Sport");

  // Array of Vehicle objects
  List<Vehicle> vehicles = [car, bike];

  // Demonstrate polymorphism
  for (var vehicle in vehicles) {
    vehicle.displayDetails();
    print(''); // Blank line for better readability
  }
}
