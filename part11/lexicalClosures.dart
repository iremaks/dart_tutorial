//closure, bir üst kapsamdaki değişkenlerin değerlerine erişmeye yarayan bir özel fonksiyondur.

void main(List<String> args) {
  var returnedFunction = toplama(3);
  var result = returnedFunction(4);
  print(result);
}

Function toplama(int eleman) {
  return (int deger) =>
      eleman *
      deger; //toplama fonksiyonu bir parametre aldı. bu fonksiyonun döndürdüğü şey başka bir fonksiyon(lambda). döndürülen fonksiyon ise deger isimli parametreyi aldı. ve döndürülen fonksiyonun parametresi, toplama fonksiyonunu etkiledi. buna lexical closure denir.
}
