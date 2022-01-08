void main(List<String> args) {
  Aile irem = Aile(null, null, null);
  irem.yasi = 24;
  Aile kerem = Aile(null, null, null);
  kerem.ebeveyn = false;
  Aile ahmet = Aile(null, null, null);
  ahmet.uyeAdi = "ahmet kamil";
  var ikinciCocuk = Aile.ebeveynlikDurumuOlmayanKurucuMetod("belirsiz", 0);
}

class Aile {
  String uyeAdi = ""; //bunlara instance variable denir.
  int yasi = 0;
  bool ebeveyn = true;

  Aile(String? uyeAdi, int? yasi, bool? ebeveyn) {
    print(
        "buna parametre alan kurucu metod (constructor method) denir ve sadece bir tane olabilir(unique)");
  }
  Aile.ebeveynlikDurumuOlmayanKurucuMetod(this.uyeAdi, this.yasi) {
    print(
        "buna named constructor method denir. istenildiği kadar  oluşturulabilir");
  }
}
