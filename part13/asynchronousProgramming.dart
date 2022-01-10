void main(List<String> args) {
  print("Anne çocuğu ekmek almaya gönderir.");
  ekmekAlma();
  print("Patates kızartılır.");
  print("Kahvaltı hazır.");
}

void ekmekAlma() {
  print("Çocuk ekmek almak için evden çıkar.");
  Future.delayed(Duration(seconds: 10), () {
    print("Çocuk ekmekle eve girer.");
  });
}
