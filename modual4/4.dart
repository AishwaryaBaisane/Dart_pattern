void main() {
  // Creating objects of Laptop and Smartphone
  Laptop myLaptop = Laptop();
  myLaptop.setBrand("Dell");
  myLaptop.setPowerConsumption(65);
  myLaptop.setBatteryLife(8);

  Smartphone mySmartphone = Smartphone();
  mySmartphone.setBrand("Samsung");
  mySmartphone.setPowerConsumption(15);
  mySmartphone.setCameraResolution(108);

  // Creating a list of Device references
  List<Device> devices = [myLaptop, mySmartphone];

  // Demonstrating polymorphism
  print("Calculating Discounts for Devices:");
  for (var device in devices) {
    print("${device.getBrand()} Discount: \$${device.calculateDiscount()}");
  }
}

class Device {
  // Private attributes
  String _brand = '';
  int _powerConsumption = 0;

  // Setter for brand
  void setBrand(String brand) {
    _brand = brand;
  }

  // Getter for brand
  String getBrand() {
    return _brand;
  }

  // Setter for power consumption
  void setPowerConsumption(int power) {
    if (power > 0) {
      _powerConsumption = power;
    } else {
      print("Power consumption must be positive!");
    }
  }

  // Getter for power consumption
  int getPowerConsumption() {
    return _powerConsumption;
  }

  // Virtual-like function for calculating discount
  double calculateDiscount() {
    return 0.0; // Default implementation
  }
}

class Laptop extends Device {
  // Specific attribute for Laptop
  int _batteryLife = 0;

  // Setter for battery life
  void setBatteryLife(int hours) {
    if (hours > 0) {
      _batteryLife = hours;
    } else {
      print("Battery life must be positive!");
    }
  }

  // Getter for battery life
  int getBatteryLife() {
    return _batteryLife;
  }

  // Overriding calculateDiscount for Laptop
  @override
  double calculateDiscount() {
    return 100.0; // Flat $100 discount
  }
}

class Smartphone extends Device {
  // Specific attribute for Smartphone
  int _cameraResolution = 0;

  // Setter for camera resolution
  void setCameraResolution(int resolution) {
    if (resolution > 0) {
      _cameraResolution = resolution;
    } else {
      print("Camera resolution must be positive!");
    }
  }

  // Getter for camera resolution
  int getCameraResolution() {
    return _cameraResolution;
  }

  // Overriding calculateDiscount for Smartphone
  @override
  double calculateDiscount() {
    return 50.0; // Flat $50 discount
  }
}
