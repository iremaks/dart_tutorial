void main(List<String> args) {
  List<int> sayilar = List.filled(3, 0, growable: false);
  sayilar[2] = 4;
  print(sayilar);

  List<String> isimler = List.filled(2, "irem");
  isimler[1] = "kerem";
  print(isimler);

  List<dynamic> mixed = List.filled(5, 0);
  mixed[3] = "ahmet";
  print(mixed);

  //liste elemanlarının gezilmesi

  for (int item in sayilar) {
    print(item);
  }

  for (int i = 0; i < sayilar.length; i++) {
    sayilar[i] += 5;
    print(sayilar[i]);
  }
}
