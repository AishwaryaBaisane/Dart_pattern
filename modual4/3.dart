void main() {
  // Creating objects of Laptop and Smartphone
  Laptop myLaptop = Laptop();
  Smartphone mySmartphone = Smartphone();

  // Setting values for Laptop
  myLaptop.setBrand("Dell");
  myLaptop.setPowerConsumption(65);
  myLaptop.setBatteryLife(8);

  // Setting values for Smartphone
  mySmartphone.setBrand("Samsung");
  mySmartphone.setPowerConsumption(15);
  mySmartphone.setCameraResolution(108);

  // Displaying device information
  print("Device Information:");
  myLaptop.displayInfo();
  mySmartphone.displayInfo();
}

class Device {
  // Private attributes
  String _brand = '';
  int _powerConsumption = 0; // in watts

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
}

class Laptop extends Device {
  // Specific attribute for Laptop
  int _batteryLife = 0; // in hours

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

  // Method to display laptop information
  void displayInfo() {
    print("Laptop:");
    print("Brand: ${getBrand()}");
    print("Power Consumption: ${getPowerConsumption()} watts");
    print("Battery Life: ${getBatteryLife()} hours");
    print("");
  }
}

class Smartphone extends Device {
  // Specific attribute for Smartphone
  int _cameraResolution = 0; // in megapixels

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

  // Method to display smartphone information
  void displayInfo() {
    print("Smartphone:");
    print("Brand: ${getBrand()}");
    print("Power Consumption: ${getPowerConsumption()} watts");
    print("Camera Resolution: ${getCameraResolution()} MP");
    print("");
  }
}
