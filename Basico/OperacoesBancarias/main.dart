import 'dart:io';

void main() {
  double saldo = 0;
  bool continuar = true;
  while (continuar) {
    print("************ MENU ************");
    print(" 1: Depositar");
    print(" 2: Sacar");
    print(" 3: Consultar Saldo");
    print(" 0: Encerrar");
    print("************  ~  ************\n");
    stdout.write("Opção: ");
    int? opcao = int.tryParse(stdin.readLineSync() ?? '');

    if (opcao == null) {
      print("Opção invalida.\n Tente novamente\n");
      continue;
    }

    switch (opcao) {
      case 1:
        stdout.write("Digite o valor que deseja depositar: ");
        double? deposito = double.tryParse(stdin.readLineSync() ?? '');
        if (deposito == null || deposito <= 0) {
          print("O valor deve ser maior que 0.0\n");
        } else {
          saldo += deposito;
          print("Saldo atual: ${saldo.toStringAsFixed(1)}\n");
        }
        break;

      case 2:
        stdout.write("Digite o valor que deseja sacar: ");
        double? saque = double.tryParse(stdin.readLineSync() ?? '');
        if (saque == null || saque <= 0) {
          print("O valor deve ser maior que 0.0\n");
        } else {
          if (saque > saldo) {
            print("Saldo insuficiente\n");
            print("Saldo atual: ${saldo.toStringAsFixed(2)}\n");
          } else {
            saldo -= saque;
            print("Saldo atual: ${saldo.toStringAsFixed(2)}\n");
          }
        }
        break;

      case 3:
        print("Saldo atual: ${saldo.toStringAsFixed(2)}\n");
        break;
      case 0:
        print("Encerrando aplicação!\n");
        continuar = false;
        break;
      default:
        print("Digite uma opção valida.\n Tente novamente.\n");
    }
  }
}
