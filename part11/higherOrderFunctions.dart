//parametre olarak geriye bir şey döndürmeyen başka bir fonksiyon alan fonksiyonlardır.

void main(List<String> args) {
  List<int> liste = [1, 2, 3];

  liste.forEach(
      callback); //forEach fonksiyonu, parametre olarak callback fonksiyonunu kullandı.

  kendiForEachYapim(liste, (int deger) {
    //fonksiyon olarak callback yazma şartı koştuk ama yazmaya gerek kalmadan parametre
    print("Değer $deger"); //atayabildik ve kullandık??
  });

  gelismisForEachYapim(liste, (int deger, int index) {
    print("Değer $deger ve index $index.");
  });
}

void kendiForEachYapim(List<int> liste, Function callback) {
  for (int i = 0; i < liste.length; i++) {
    callback(liste[i]);
  }
}

void gelismisForEachYapim(List<int> liste, Function callback) {
  for (int i = 0; i < liste.length; i++) {
    callback(liste[i], i);
  }
  ;
}

void callback(int element) {
  print("Element $element");
}
