class BankService {
  double _saldo = 0;

  double depositar(double valor) {
    if (valor <= 0) throw ArgumentError('O valor deve ser maior que 0.0\n');
    _saldo += valor;
    return _saldo;
  }

  double sacar(double valor) {
    if (valor <= 0) throw ArgumentError('O valor deve ser maior que 0.0\n');
    if (valor > _saldo) throw ArgumentError('Saldo insuficiente');
    _saldo -= valor;
    return _saldo;
  }

  double consultarSaldo() {
    return _saldo;
  }
}
