void main() {
  // this is a fallback  condition
  String myBorderSize = 'abc';
  double? myBorderSizeAsDouble;

  try {
    myBorderSizeAsDouble = double.parse(myBorderSize);
  } catch (borderErr) {
    print(borderErr);
  }
  myBorderSizeAsDouble = myBorderSizeAsDouble ?? 40.0;
  print('\nAplicando padding padrão: $myBorderSizeAsDouble\n');
}
