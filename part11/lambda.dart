//isimsiz fonksiyonlara lambda expression denir.

void main(List<String> args) {
  Function fonksiyon1 = (int a, int b) {
    int toplam = a + b;
    return toplam;
  };

  var sayi = fonksiyon1(6,
      7); //Bu fonksiyonlar başka bir fonksiyona parametre olarak atanabilir, bir değişkene atanabilir.
  print(sayi);
}
