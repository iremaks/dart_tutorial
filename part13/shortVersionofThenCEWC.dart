void main(List<String> args) {
  print("Anne çocuğu ekmek almaya gönderir.");
  print("Çocuk ekmek almak için evden çıkar.");

  ekmekAlma()
      .then((value) => print(value))
      .catchError((hata) => print(hata))
      .whenComplete(() => print("Ekmek alma işlemi bitti."));

  print("Patates kızartılır.");
  print("Kahvaltı hazır.");
}

Future<String> ekmekAlma() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    return "Çocuk ekmekle eve girer."; //value dediğimz burası
  });
}
