import '../part8/classandObjects.dart';

void main(List<String> args) {
  Asker ali = Er("Ali", 23);
  ali.selamla();
}

class Asker {
  String ad = "";
  int yas = 0;
  String memleket = "Ankara";

  Asker(this.ad, this.yas) {
    print("Asker kurucu metodu çalıştı.");
  }
  void selamla() {
    print("merhaba adım $ad, yaşım $yas.");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    //üst sınıfa erişmeye yarar.
    print("Er kurucu metodu çalıştı.");
  }
  void memleketDegistir(String yeniMemleket) {
    super.memleket = yeniMemleket; //üst sınıfa erişiyoruz.
  }

  @override
  void selamla() {
    super.selamla();
    print("Ben bir erim.");
  }
}
