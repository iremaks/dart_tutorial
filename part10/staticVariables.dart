void main(List<String> args) {
  Matematik m1 = Matematik(34, 15);
  m1.topla();
  m1.topla();
  m1.topla();
  m1.topla();
  print(Matematik.Pi); // static değişken olduğu için nesneye gerek kalmadı.
  Matematik.sinifAdiniSoyle();
  print(Matematik.toplamIslemSayisi); //nesneye bağlı değil, sınıfa bağlı.
}

class Matematik {
  //instance variables
  int birinciSayi = 0;
  int ikinciSayi = 0;
  static int toplamIslemSayisi = 0;

  //class variable
  static double Pi = 3.14;
  static void sinifAdiniSoyle() {
    //statik alan içinde instance var çağıramazsın.
    print("Ben matematik sınıfıyım.");
  }

  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    toplamIslemSayisi++;
    print("Toplam: ${birinciSayi + ikinciSayi}");
  }
}
