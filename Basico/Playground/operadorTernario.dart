void main() {
  String green = "greenn";
  bool female = true;
  int idade = 17;

  green == "Green" ? print("Verde") : print("cor não identificada");
  female ? print("mulher") : print("Homen");
  idade > 18
      ? print("${idade} anos é idade de adulto")
      : print("${idade} anos é idade de criança!");
}
