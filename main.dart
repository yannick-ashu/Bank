
import 'dart:io';

//first class
class Deposit {
  //properties

  double? balance = 100;
  String? amount;
  int? amountInFigures;

//method 1
  void depositamount() {
    print("How much would you like to deposit?");
    amount = stdin.readLineSync();

    amountInFigures = int.tryParse(amount ?? "");
    if (amount == null) {
      print("Input is not a valid number");
    }
  }

//method 2
  void newBalance() {
    print("$amountInFigures has been sucessfully deposited into your account");
    double sum = (balance ?? 0) + (amountInFigures ?? 0);
    print("Your new balance is $sum");
    balance == sum;
  }
}

//second class
class widthdraw {
  //properties
  String? amounts;
  double? balance = 100;
  int accept = 1;
  int cancel = 2;
  String? answer;
  int? amountToInt;

  //method
  void transaction() {
    String? amounts = stdin.readLineSync();
    amountToInt = int.tryParse(amounts ?? "");
    print("Do you confirm the withdrawal of $amountToInt?");
    print("1: Yes");
    print("2: Cancel");
    answer = stdin.readLineSync();

    if (answer == "1") {
      print("$amountToInt has been succesfull withdrawn from your account");
    }
    if (answer == "2") {
      print("Transaction cancelled");
    }
    ;
  }

  void newwithdrawBalance() {
    double mewbalance = (balance ?? 0) - (amountToInt ?? 0);
    print("Your new balance is $mewbalance");
  }
}

void main() {
  String? name;
  String? answer;
  int deposit = 1;
  int withdraw = 2;
  double? balance = 100;

  print("Hi! Please enter your name");

  name = stdin.readLineSync();
  print("Welcome $name your current balance is $balance");

  print("Which transaction will you like to peform?");
  print("$deposit: Deposit");
  print("$withdraw: Withdraw");

  answer = stdin.readLineSync();

//creating object
  if (answer == "1") {
    Deposit depot = Deposit();
    depot.depositamount();
    depot.newBalance();
  }

//creating second object
  if (answer == "2") {
    print("Your curent balance is $balance");
    print("How much do you want to withdraw?");

    widthdraw withdraws = widthdraw();
    withdraws.transaction();
    withdraws.newwithdrawBalance();
  }
  }
