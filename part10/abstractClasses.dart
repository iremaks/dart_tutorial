void main(List<String> args) {
  var sekil1 = Kare(3);
  print(sekil1.alanHesapla());
}

abstract class Sekil {
  //içinde bir tane bile gövdesi oluşturulamayan fonksiyon varsa soyut sınıf açılmalı. Bunun dışında içi dolu fonksiyonlar da yer alabilir. abstract classlardan nesne üretilemez. Soyut sınıflardan üretilen normal sınıflarda, parenttaki boş fonksiyonlara gövde yazılması zorunludur. Gövdesi dolu olanların yazılması zorunlu değildir.
  double alanHesapla();
  double cevreHesapla();
  void kendiniTanit() {
    print("Ben şekil sınıfındanım.");
  }
}

class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);

  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }
}

class Dikdortgen extends Sekil {
  int kisaKenar;
  int uzunKenar;

  Dikdortgen(this.kisaKenar, this.uzunKenar);
  @override
  double alanHesapla() {
    return kisaKenar * uzunKenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return (2 * kisaKenar) + (2 * uzunKenar.toDouble());
  }
}
