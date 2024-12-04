void main() {
  // Creating an object of MathOperations
  MathOperations mathOps = MathOperations();

  // Demonstrating exception handling for different scenarios
  print("Division Results:");
  
  try {
    print("10 / 2 = ${mathOps.divide(10, 2)}");
  } catch (e) {
    print(e);
  }

  try {
    print("10 / 0 = ${mathOps.divide(10, 0)}");
  } catch (e) {
    print(e);
  }

  try {
    print("-10 / 5 = ${mathOps.divide(-10, 5)}");
  } catch (e) {
    print(e);
  }

  try {
    print("10 / -5 = ${mathOps.divide(10, -5)}");
  } catch (e) {
    print(e);
  }
}

class MathOperations {
  // Method to perform division with exception handling
  double divide(int numerator, int denominator) {
    if (denominator == 0) {
      throw Exception("Error: Division by zero is not allowed.");
    }
    if (numerator < 0 || denominator < 0) {
      throw Exception("Error: Negative numbers are not allowed.");
    }
    return numerator / denominator;
  }
}
