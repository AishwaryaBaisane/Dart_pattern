// 2. Define a class named `Employee` with private attributes `name`, `salary`, and `designation`.
// Encapsulate these attributes using appropriate access specifiers. 
// Implement public member functions to set and get the values of these attributes
//. Demonstrate the encapsulation concept by accessing these attributes through the member functions.


class Employee
{
  String _name = '';
  String _designation = '';
  double _salary = 0;

  void set(String name,String designation,double salary)
  {
    _name = name;
    _designation = designation;
    _salary = salary;
  } 

  void get()
  {
    print('$_name');
    print('$_designation');
    print('$_salary');
  }

}



void main()
{
   Employee employee = Employee();

   employee.set('aish', 'deresyfys', 34567);
   employee.get();
}