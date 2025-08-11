// bank_account.dart

// Base class
class BankAccount {
  String accountHolder;
  double _balance; // Private variable

  BankAccount(this.accountHolder, this._balance);

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount");
    } else {
      print("Deposit amount must be greater than zero.");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Insufficient balance or invalid amount.");
    }
  }

  void displayBalance() {
    print("Account Holder: $accountHolder");
    print("Current Balance: $_balance");
  }
}

// Child class - Savings Account
class SavingsAccount extends BankAccount {
  double interestRate;

  SavingsAccount(String holder, double balance, this.interestRate)
      : super(holder, balance);

  void addInterest() {
    double interest = super._balance * interestRate / 100;
    deposit(interest);
    print("Interest Added: $interest");
  }
}

// Child class - Current Account
class CurrentAccount extends BankAccount {
  double overdraftLimit;

  CurrentAccount(String holder, double balance, this.overdraftLimit)
      : super(holder, balance);

  @override
  void withdraw(double amount) {
    if (amount > 0 && amount <= (super._balance + overdraftLimit)) {
      super._balance -= amount;
      print("Withdrawn: $amount (Overdraft applied if needed)");
    } else {
      print("Amount exceeds overdraft limit.");
    }
  }
}

void main() {
  // Create accounts
  var savings = SavingsAccount("Azeem", 5000, 5.0);
  var current = CurrentAccount("Shehzad", 3000, 1000);

  // Savings Account operations
  savings.deposit(2000);
  savings.addInterest();
  savings.withdraw(1000);
  savings.displayBalance();

  print("\n----------------------\n");

  // Current Account operations
  current.deposit(1500);
  current.withdraw(4000); // overdraft applied
  current.displayBalance();
}
