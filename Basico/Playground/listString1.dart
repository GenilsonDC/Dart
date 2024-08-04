List<String> fruits = ['maçã', 'pera', 'laranja', 'uva', 'banana'];

void main(List<String> args) {
  pieMaker();
}

void pieMaker() {
  for (String fruit in fruits) {
    print('Torta de ' + fruit);
  }
}
