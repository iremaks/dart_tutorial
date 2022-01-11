void main(List<String> args) async {
  print("İnternetten kişi verisi getirilecek.");

  kisiyleIlgiliIslemler();
  print("Başka işler yapılacak");
  print("İşlem bitti");
}

void kisiyleIlgiliIslemler() async {
  String kisi = await kisiVerisiniGetir();
  print(kisi.length);
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 8), () {
    return "Kişi adı : Emre ve id:100";
  });
}
