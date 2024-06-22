void checkBankAccountNumber(String accNumber) {
  if (accNumber.length != 8) {
    throw ArgumentError("Invalid account number! Enter exactly 8 digits.");
  }
}
