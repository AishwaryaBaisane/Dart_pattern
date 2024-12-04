void main() {
  // Creating objects of Lion and Fish
  Lion myLion = Lion();
  Fish myFish = Fish();

  // List of Animal references
  List<Animal> animals = [myLion, myFish];

  // Demonstrating polymorphism
  for (var animal in animals) {
    animal.makeSound();
    animal.move();
    print(""); // For better readability
  }
}

abstract class Animal {
  // Abstract method for sound
  void makeSound();

  // Abstract method for movement
  void move();
}

class Lion extends Animal {
  @override
  void makeSound() {
    print("Lion: Roar!");
  }

  @override
  void move() {
    print("Lion: Walks majestically.");
  }
}

class Fish extends Animal {
  @override
  void makeSound() {
    print("Fish: Makes bubbling sounds.");
  }

  @override
  void move() {
    print("Fish: Swims gracefully.");
  }
}
