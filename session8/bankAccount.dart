class BankAccount {
  num _balance = 0;
  set balance(num value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print("Invalid balance ");
    }
  }

  num get balance => this._balance;
}
