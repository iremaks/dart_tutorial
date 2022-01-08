void main(List<String> args) {
  Map<String, dynamic> irem = {
    "soyad": "orman",
    "yas": 24,
    "evliMi": true,
  };

  for (String anahtar in irem.keys) {
    //print(anahtar); //anahtarları yazıyor
    print(irem[anahtar]); // dynamicleri yazıyor
  }
  for (var element in irem.entries) {
    print("key: ${element.key}, değeri: ${element.value}");
  }
}
//diğer metodlar: containsKey, containsValue, 
