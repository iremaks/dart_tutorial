void main(List<String> args) {
  var sayi1 = 2;
  var sayi2 = 4;
  var kucukSayi;
  //sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2;
  kucukSayi = sayi1 < sayi2 ? sayi1 : sayi2;
  print(kucukSayi);

  String? ad = null;
  String? soyad = "aksoy";

  String? mesaj = ad ?? soyad;
  print(mesaj);

  int sayi3 = 6;
  int bolum = (sayi3 ~/ 10).toInt();
  switch (bolum) {
    case 0:
      print("sayınız 10dan küçük");
      break;
    case 1:
      print("10dan büyük");
      break;
    default:
      print("geçersiz");
  }
}
