Map<String, int> phoneBook = {
  'Genilson': 15912312312,
  'Maria': 15922312312,
  'Sebastião': 15933312312,
};
void main() {
  phoneBook['Isabela'] = 15944123123;

  print(phoneBook['Isabela']);
  print('\n    Keys: ${phoneBook.keys}\n valores: ${phoneBook.values}');
}
