void main(List<String> args) {
  //Listeden farkları: bir elemanı sadece bir kere alır, index yoktur, sıralı tutmaz.
  Set<String> isimler = Set();
  isimler.add("irem");
  isimler.add("ahmet");
  isimler.add("kerem");
  isimler.add("ahmet");

  for (String isim in isimler) {
    print(isim);
  }
  Set<int> sayilar = Set.from([4, 5, 6, 4, 7, 8, 5]); //listeden set oluşturma
  List<int> ciftBasamakli = [12, 34, 32, 12, 45];
  sayilar.addAll(ciftBasamakli);
  print(sayilar);
}
