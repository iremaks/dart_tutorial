void main(List<String> args) {}

class Musteri {
  int? _musteriNo;

  Musteri(int musteriNo) {}

  String get musteriNoSoyle {
    return "Musteri No : $_musteriNo";
  }

  String get musteriNoSoyle2 => "musteri no $_musteriNo.";

  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }
}
