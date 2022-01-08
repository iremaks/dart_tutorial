void main(List<String> args) {
  int sonuc = alanHesapla(2, 5);
  print(sonuc);
  //print(alanHesapla(4, 5));
  int carpim = sayilariCarp(2, 7);
  print(carpim);
}

int alanHesapla(int sayi1, int sayi2) {
  return sayi1 * sayi2;
}

int sayilariCarp(int s1, int s2) => s1 * s2; // fat arrow function


//fonksiyonda return yoksa başına void yaz.