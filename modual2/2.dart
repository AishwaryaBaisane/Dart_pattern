class BankAccount {
  // Private attributes
  String _accountNumber;
  double _balance;
  String _ownerName;

  // Constructor
  BankAccount(this._accountNumber, this._ownerName, this._balance);

  // Getter for account number (read-only)
  String get accountNumber => _accountNumber;

  // Getter and setter for owner name
  String get ownerName => _ownerName;
  set ownerName(String name) {
    _ownerName = name;
  }

  // Getter for balance (read-only)
  double get balance => _balance;

  // Method to credit amount
  void credit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Successfully credited \$${amount.toStringAsFixed(2)}.");
    } else {
      print("Invalid amount. Credit failed.");
    }
  }

  // Method to debit amount
  void debit(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Successfully debited \$${amount.toStringAsFixed(2)}.");
    } else {
      print("Invalid amount or insufficient funds. Debit failed.");
    }
  }

  // Method to display account details
  void displayDetails() {
    print("Account Number: $_accountNumber");
    print("Owner Name: $_ownerName");
    print("Current Balance: \$${_balance.toStringAsFixed(2)}");
  }
}

void main() {
  // Create a BankAccount object
  BankAccount account = BankAccount("123456789", "John Doe", 1000.00);

  // Display initial account details
  account.displayDetails();
  print('');

  // Perform credit operation
  account.credit(500);
  account.displayDetails();
  print('');

  // Perform debit operation
  account.debit(300);
  account.displayDetails();
  print('');

  // Attempt an invalid debit
  account.debit(1500);
  account.displayDetails();
  print('');

  // Change owner name using the setter
  account.ownerName = "Jane Doe";
  account.displayDetails();
}
