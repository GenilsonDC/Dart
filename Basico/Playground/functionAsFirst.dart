void main() {
  int result = calculator(4, 6, multiply);
  print(result);
}

int calculator(int n1, n2, Function calculation) {
  return calculation(n1, n2);
}

int add(int n1, int n2) {
  return n1 + n2;
}

int multiply(int n1, int n2) {
  return n1 * n2;
}
