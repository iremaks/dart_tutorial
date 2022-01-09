void main(List<String> args) {
  print("Program başladı.");

  try {
    //Hatalı olabileceğinden şüphelendiğimiz kodu try içine koyarız. Hatasızsa çalışır.
    int sayi = 100 ~/ 0;
    //Sayının 0'a bölümü tanımsızdır. / yerine ~/ yaparsak bunu compile aşamasında görmeyiz.
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bölen 0 olamaz.");
    //Belirli bir hata için belirli bir fonksiyon girebiliriz.
  } on FormatException catch (e) {
    print(e.message);
    print(e.source);
    //Belirli bir hatayla ilgili yapılacak işlemler seçebiliriz.
  } catch (e) {
    //Şüphelenilen kod hatalıysa ve hangi hata olduğu bizim için önemsizse catch bu hatayı yakalar ve verir. Programın devamı çalışmaya devam eder.
    print("${e} hatası bulundu.");
  } finally {
    print("Hata çıksa da çıkmasa da bu blok çalışacak.");
  }

  print("Program sonlandı.");
}
