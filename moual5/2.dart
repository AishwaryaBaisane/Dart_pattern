//  Define a class `BankAccount` with private attributes `accountNumber`, `balance`, and `ownerName`. 
//Encapsulate these attributes using appropriate access specifiers. Implement public member functions to credit, debit, and display the balance.
// Demonstrate encapsulation by interacting with the class through its member functions.

import 'dart:io';

class BankAccount {

  String _accountNumber;
  double _balance;
  String _ownerName;

  
  BankAccount(this._accountNumber, this._balance, this._ownerName);

  void credit(double amount) 
  {
    if (amount > 0) 
    {
      _balance += amount;
      print('Amount credited: \$${_balance}');
    } else 
    {
      print('Invalid amount! Please enter a positive value.');
    }
  }

  void debit(double amount) 
  {
    if (amount > 0 && amount <= _balance)
     {
      _balance -= amount;
      print('Amount debited: \$${_balance}');
    } else if (amount > _balance) 
    {
      print('Insufficient balance!');
    } else {
      print('Invalid amount! Please enter a positive value.');
    }
  }

  void displayDetails() {
    print('\nAccount Details:');
    print('Account Number: $_accountNumber');
    print('Owner Name: $_ownerName');
    print('Current Balance: \$${_balance}');
  }
}

void main() {

  BankAccount account = BankAccount('123456789', 1000.00, 'John Doe');

  while (true) {
    print('\nBank Account Menu:');
    print('1. Credit (Deposit)');
    print('2. Debit (Withdraw)');
    print('3. Display Account Details');
    print('4. Exit');
    print('Enter your choice:');

    int? choice = int.tryParse(stdin.readLineSync() ?? '');

    switch (choice) {
      case 1:
        print('Enter the amount to credit:');
        double? creditAmount = double.tryParse(stdin.readLineSync() ?? '');
        if (creditAmount != null) {
          account.credit(creditAmount);
        } else {
          print('Invalid input! Please enter a valid number.');
        }
        break;
      case 2:
        print('Enter the amount to debit:');
        double? debitAmount = double.tryParse(stdin.readLineSync() ?? '');
        if (debitAmount != null) {
          account.debit(debitAmount);
        } else {
          print('Invalid input! Please enter a valid number.');
        }
        break;
      case 3:
        account.displayDetails();
        break;
      case 4:
        print('Thank you for using the bank account system!');
        return;
      default:
        print('Invalid choice! Please select a valid option.');
    }
  }
}
