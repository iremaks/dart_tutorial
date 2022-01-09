void main(List<String> args) {
  Person emre = Person(3, "emre");
  Student hasan = Student(1, "hasan", 10);
  Person ayse = Student(8, "ayse", 8);
  var yunus = Person(6, "yunus");
  var ali = Student(7, "ali", 4);

  List<Person> alltheStudents = [emre, hasan, ayse, yunus, ali];

  bool sonuc = alltheStudents.any((Person element) => element.id > 10);
  //any, bir listede bir şeyi test etmek için kullanılır. bool döner. örnekte, listede idsi 10dan büyük öğrenci var mı diye test ettik.
  print(sonuc);

  bool sonucE = alltheStudents.every((element) => element.isim.length > 0);
  //any'den farkı: any, test edilen şeyi karşılayan herhangi bir eleman var mı diye kontrol eder. every tüm elemanların bunu karşılayıp karşılamadığını gösterir.
  print(sonucE);

  var foundElement = alltheStudents.firstWhere((element) => element.id == 1);
  //aranan şartı karşılayan İLK elemanı getirir.
  print(foundElement);

  Map<int, Person> newMap = alltheStudents.asMap();
  //listeden key'i index numarası, value'su liste elemanı olan bir map oluşturur.
  print(newMap);
  print(newMap[0]!.id); //null olabileceğini belirtmek gerekti.

  var iterableMap = alltheStudents.map((Person e) => "${e.isim}").toList();
  //var olan listeyi mapleyerek içinden istenilen değerin alınıp yeni bir iterable haline gelmesini sağlar. ".toList" ya da ".toSet" ile kullanılması daha sağlıklı.
  print(iterableMap);

  alltheStudents.sort((ogr1, ogr2) {
    if (ogr1.id < ogr2.id) {
      return 1;
    } else if (ogr1.id > ogr2.id) {
      return -1;
    } else {
      return 0;
    }
  });
  //tüm nesneleri id değerlerine göre büyükten küçüğe sıralayan fonksiyon.
  print(alltheStudents);
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);

  String toString() {
    return "id:$id ve isim $isim.\n";
  }
}

class Student extends Person {
  int alinanDersSayisi = 0;
  Student(id, isim, alinanDersSayisi) : super(id, isim);

  @override
  String toString() {
    return "id: $id, isim $isim ve alınan ders: $alinanDersSayisi\n";
  }
}
