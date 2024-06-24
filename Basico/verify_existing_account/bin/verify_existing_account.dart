import 'dart:io';

void main() {
  try {
    stdout.write('\nEnter your bank account number: ');
    String? accNumber = stdin.readLineSync() ?? '';

    checkBankAccountNumber(accNumber);

    print("Valid account number.\n");
  } on ArgumentError catch (err) {
    print("ERROR!\n ${err.message}\n");
  }
}

void checkBankAccountNumber(String accNumber) {
  if (accNumber.length != 8) {
    throw ArgumentError("Invalid account number!\n Enter exactly 8 digits.");
  }
}
