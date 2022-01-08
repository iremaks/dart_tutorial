void main(List<String> args) {
  const Student irem = Student(4, "abc");
  final Student irem2 = const Student(2, "xyz");
}

class Student {
  final int id; //final dediğimiz için bir kere atanan id ve isim değişemeyecek.
  final String isim;

  const Student(this.id,
      this.isim); // const dediğimiz için aynı değerlere sahip iki öğrenci oluşturulsa da aynı yere işaret edecek.
}
