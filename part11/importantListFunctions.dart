void main(List<String> args) {
  Person emre = Person(3, "emre");
  Student hasan = Student(1, "hasan", 10);
  Person ayse = Student(8, "ayse", 8);
  var yunus = Person(6, "yunus");
  var ali = Student(7, "ali", 4);

  List<Person> alltheStudents = [emre, hasan, ayse, yunus, ali];
  var list1 = List<Student>.filled(5, Student(0, "", 0));
  var listFrom = List<Student>.from(
      alltheStudents); //list from kullandığımızda çekmek istediğimiz listeden sadece istediğimiz türdeki elemanları almaya çalışabiliriz, başka türde de elemanlar varsa çalışırken hata verir. wheretype ile çözülür.
  var listOf = List.of(
      alltheStudents); //list of kullandığımızda seçme şansımız yoktur. eğer <tür> gireceksek, çekmek istediğimiz listenin tüm elemanları o türden olmak zorunda. buraya <student> giremeyiz. Bunu çözmek için wheretype kullanılır:
  var listOf2 = List<Student>.of(alltheStudents.whereType<Student>());
  var listGenerate = List<int>.generate(
      4,
      (index) =>
          index +
          2); //filled gibi ancak liste oluştururken elemanlara müdahele edilebilir, indexi bellekte tutuyor. bu örnekte indexine 2 ekleyerek 4 elemanlı liste oluştur dendi. higher order fonksiyondur.
  var listUnmodifiable = List.unmodifiable([
    0,
    1,
    2,
    3
  ]); //bu türde oluşturulan listelere add, remove vs müdahele edilemez.
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);

  String toString() {
    return "id:$id ve isim $isim.";
  }
}

class Student extends Person {
  int alinanDersSayisi = 0;
  Student(id, isim, alinanDersSayisi) : super(id, isim);

  @override
  String toString() {
    return "id: $id, isim $isim ve alınan ders: $alinanDersSayisi";
  }
}
