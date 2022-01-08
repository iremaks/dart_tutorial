void main(List<String> args) {
  Map<String, dynamic> sehirBilgileri1 = {
    "sehirAdı": "istanbul",
    "ilceSayisi": 40,
    "plakaKodu": 34,
  };
  Map<String, dynamic> sehirBilgileri2 = {
    "sehirAdı": "ankara",
    "ilceSayisi": 44,
    "plakaKodu": 06,
  };
  Map<String, dynamic> sehirBilgileri3 = {
    "sehirAdı": "izmir",
    "ilceSayisi": 31,
    "plakaKodu": 35,
  };

  var sehirlerim = [sehirBilgileri1, sehirBilgileri2, sehirBilgileri3];

  print(sehirlerim[0]["sehirAdı"]);
}
