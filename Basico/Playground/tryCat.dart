void main() {
  String myMargin = 'abc';
  try {
    double myMarginAsDouble = double.parse(myMargin);
    return print('$myMarginAsDouble + 1');
  } catch (marginErr) {
    print('\n$marginErr');
    print('Aplicando margim padrão 20px\n');
  }
//---------- Other opt
  String myPadding = 'abc';
  double myPaddingAsDouble;

  try {
    myPaddingAsDouble = double.parse(myPadding);
  } catch (paddingErro) {
    print('\n$paddingErro');
    myPaddingAsDouble = 20;
    print('Aplicando padding padrão: $myPaddingAsDouble\n');
    ;
  }
}
