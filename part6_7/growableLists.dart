void main(List<String> args) {
  List<int> sayilar = [1, 2, 4, 5];
  sayilar.add(44);
  print(sayilar);

  List<int> sayilar2 = List.filled(4, 6, growable: true);
  sayilar2.add(43);
  print(sayilar2);
}
