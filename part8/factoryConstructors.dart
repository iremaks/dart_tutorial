void main(List<String> args) {
  //constuctorlarda normalde return kullanılmaz. arkada çalışan bir return vardır. ama kullanmak istiyorsak factory ile kullanırız.
  var Irem = Ogrenci(4, "irem");
  var Beyza = Ogrenci.factoryConstructors(-8, "beyzanur");
  print(Beyza.id);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("123");
  }

  Ogrenci.idSizIsim(this.isim) {
    print("abc");
  }

  factory Ogrenci.factoryConstructors(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(id, isim);
  }
}
