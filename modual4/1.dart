void main() {
  // Creating a list of Student objects
  List<Student> students = [
    Student("Alice", 101),
    Student("Bob", 102),
    Student("Charlie", 103)
  ];

  // Displaying the details of each student
  for (var student in students) {
    print(student.getDetails());
  }
}

class Student {
  // Private attributes
  String _name;
  int _rollNumber;

  // Parameterized constructor
  Student(this._name, this._rollNumber);

  // Method to get the student details
  String getDetails() {
    return "Name: $_name, Roll Number: $_rollNumber";
  }
}
