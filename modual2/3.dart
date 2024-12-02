// Base class Vehicle
class Vehicle {
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
  Car(String model, double speed) : super(model, speed);

  // Override time calculation with custom behavior
  @override
  double calculateTime(double distance) {
    print("Calculating time for Car...");
    return super.calculateTime(distance);
  }
}

// Derived class Bike
class Bike extends Vehicle {
  Bike(String model, double speed) : super(model, speed);

  // Override time calculation with custom behavior
  @override
  double calculateTime(double distance) {
    print("Calculating time for Bike...");
    return super.calculateTime(distance);
  }
}

void main() {
  // Create objects for Car and Bike
  Car car = Car("Tesla Model S", 120);
  Bike bike = Bike("Yamaha R15", 80);

  // Distance to travel
  double distance = 240; // in kilometers

  // Calculate and display time for Car
  print("Vehicle: ${car.model}");
  print("Speed: ${car.speed} km/h");
  print("Time to travel $distance km: ${car.calculateTime(distance).toStringAsFixed(2)} hours\n");

  // Calculate and display time for Bike
  print("Vehicle: ${bike.model}");
  print("Speed: ${bike.speed} km/h");
  print("Time to travel $distance km: ${bike.calculateTime(distance).toStringAsFixed(2)} hours\n");
}
