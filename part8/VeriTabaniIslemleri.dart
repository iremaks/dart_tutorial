import 'dart:math';

void main(List<String> args) {}

class VeriTabaniIslemleri {
  String _kullaniciAdi = "irem";
  String _sifre = "1234";

  bool baglanma() {
    if (_internetDurumu()) {
      if (_kullaniciAdi == "irem" && _sifre == "1234") {
        return true;
      } else
        return false;
    } else {
      return false;
    }
  }

  bool _internetDurumu() {
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
