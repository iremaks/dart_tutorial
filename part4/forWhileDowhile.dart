void main(List<String> args) {
  List isimListesi = ["irem", "kerem", "ahmet"];

  for (int i = 0; i < isimListesi.length; i++) {
    print("kd" + isimListesi[i]);
  }

  int sayac = 0;
  while (sayac < 3) {
    print(sayac);
    sayac++;
  }

  int sayac2 = 1;
  do {
    print(sayac2);
    sayac2++;
  } while (sayac2 < 4);
}
