import 'package:operacoes_bancarias/src/services/bank_service.dart';
import 'package:test/test.dart';

void main() {
  group('BankService', () {
    late BankService bankService;
    setUp(() {
      bankService = BankService();
    });
    test('Depositar dinheiro', () {
      double saldo = bankService.depositar(100);
      expect(saldo, 100);
    });

    test('Sacar dinheiro', () {
      bankService.depositar(100);
      double saldo = bankService.sacar(50);
      expect(saldo, 50);
    });

    test('Consultar saldo', () {
      bankService.depositar(100);
      double saldo = bankService.consultarSaldo();
      expect(saldo, 100);
    });

    test('Sacar mais que o saldo disponível', () {
      bankService.depositar(100);
      expect(() => bankService.sacar(150), throwsArgumentError);
    });

    test('Sacar um valor invalido', () {
      expect(() => bankService.sacar(-60), throwsArgumentError);
    });
  });
}
