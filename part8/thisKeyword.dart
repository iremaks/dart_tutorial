void main(List<String> args) {
  Aile irem = Aile("irem", 24, true);
  irem.bilgileriSoyle();
}

class Aile {
  String? uyeAdi = "";
  int? yasi = 0;
  bool? ebeveyn = true;

  Aile(String uyeAdi, int yasi, bool ebeveyn) {
    this.ebeveyn = ebeveyn;
    this.uyeAdi = uyeAdi;
    this.yasi = 24;
  }

  bilgileriSoyle() {
    print("adi $uyeAdi, yasi $yasi, ebeveynlik durumu $ebeveyn.");
  }
}
//instance variables ile parameters aynı olursa hata verir. bunun için "this" kullanılır. parametrelere başka kelimeler verilirse variablelar ile eşitlenebilir. isim (parametre)= uyeAdi gibi. daha kısa yolu ise, direkt olarak parametre oluştururken "this.instanceVariableName" şeklinde oluşturmak. Örnek:     Aile(this.uyeAdi, this.yasi, this.ebeveyn){}
