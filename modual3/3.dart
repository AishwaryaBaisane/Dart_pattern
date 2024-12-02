// Define the base class Animal
class Animal {
  // Private attributes
  String _name;
  String _sound;

  // Constructor
  Animal(this._name, this._sound);

  // Getter and setter for name
  String get name => _name;
  set name(String name) => _name = name;

  // Getter and setter for sound
  String get sound => _sound;
  set sound(String sound) => _sound = sound;

  // Method to produce sound (can be overridden)
  void makeSound() {
    print('$_name makes a sound: $_sound');
  }
}

// Define the Dog class derived from Animal
class Dog extends Animal {
  Dog(String name) : super(name, 'Bark');

  // Override makeSound method
  @override
  void makeSound() {
    print('$name barks: ${sound}');
  }
}

// Define the Cat class derived from Animal
class Cat extends Animal {
  Cat(String name) : super(name, 'Meow');

  // Override makeSound method
  @override
  void makeSound() {
    print('$name meows: ${sound}');
  }
}

void main() {
  // Create objects for Dog and Cat
  Dog dog = Dog('Buddy');
  Cat cat = Cat('Whiskers');

  // Demonstrate abstraction by calling their sound methods
  dog.makeSound(); // Output: Buddy barks: Bark
  cat.makeSound(); // Output: Whiskers meows: Meow
}
