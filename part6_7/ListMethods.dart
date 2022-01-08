void main(List<String> args) {
  List<int> sayilar = [2, 5, 6, 7];
  print(sayilar.first);
  print(sayilar.last);
  print(sayilar.isEmpty);

  if (sayilar.isNotEmpty) {
    print(sayilar);
  } else {
    print("sayilar dizisinin boş olma durumu" + sayilar.isEmpty.toString());
  }

  print("ters sıralama ${sayilar.reversed}"); //anlık değişim
  sayilar.add(34);
  sayilar.remove(7); //sadece ilk gördüğü 7yi çıkarır.
  sayilar.removeAt(2); //index ile çalışıyor.
//sabit boyutlu listelerde remove ve removeAt çalışmıyor.
  if (sayilar.contains(34)) {
    print("yes");
  } else {
    print("no");
  }
  print(sayilar.indexOf(34));
  sayilar.add(54);
  sayilar.add(67);
  sayilar.shuffle();
  print(sayilar);

  //spreads operator
  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];
  var tumSayilar = [...tekSayilar, ...ciftSayilar];
  print(tumSayilar);
}
