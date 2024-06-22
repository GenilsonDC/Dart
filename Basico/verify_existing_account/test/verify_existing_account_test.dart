import 'package:test/test.dart';
import 'package:verify_existing_account/verify_existing_account.dart';

void main() {
  group('checkBankAccountNumber', () {
    test('throws an error if the account number is not 8 digits', () {
      expect(() => checkBankAccountNumber('1234567'), throwsArgumentError);
      expect(() => checkBankAccountNumber('123456789'), throwsArgumentError);
    });

    test('does not throw an error if the account number is exactly 8 digits',
        () {
      expect(() => checkBankAccountNumber('12345678'), returnsNormally);
    });
  });
}
