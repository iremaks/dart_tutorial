void main(List<String> args) {
  print("Anne çocuğu ekmek almaya gönderir.");
  print("Çocuk ekmek almak için evden çıkar.");
  Future<String> sonuc = ekmekAlma();
  sonuc.then((value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("Ekmek alma işlemi bitti."));

  print("Patates kızartılır.");
  print("Kahvaltı hazır.");
}

Future<String> ekmekAlma() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    //return "Çocuk ekmekle eve girer.";
    throw Exception("Bakkalda ekmek kalmamış");
  });
  return sonuc;
}
