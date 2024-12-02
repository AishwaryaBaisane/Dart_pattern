// Define the Person class
class Person {
  // Private attributes
  String _name;
  int _age;
  String _address;

  // Parameterized constructor
  Person(this._name, this._age, this._address);

  // Getter and setter for name
  String get name => _name;
  set name(String name) => _name = name;

  // Getter and setter for age
  int get age => _age;
  set age(int age) {
    if (age > 0) {
      _age = age;
    } else {
      print('Age must be positive.');
    }
  }

  // Getter and setter for address
  String get address => _address;
  set address(String address) => _address = address;

  // Method to display details
  void displayDetails() {
    print('Name: $_name, Age: $_age, Address: $_address');
  }
}

void main() {
  // Number of objects to create
  int n = 3;

  // List to store Person objects
  List<Person> persons = [
    Person('Alice', 25, '123 Elm Street'),
    Person('Bob', 30, '456 Oak Avenue'),
    Person('Charlie', 22, '789 Pine Road')
  ];

  // Display details of all persons
  for (var person in persons) {
    person.displayDetails();
  }
}
