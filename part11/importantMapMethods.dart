//key-value çiftine entry denir.

void main(List<String> args) {
  Map<String, dynamic> map1 = Map();
  var map2 = <String, dynamic>{};

  map1["id"] = 5;
  map1["isim"] = "irem";
  map1["renk"] = "mavi";

  map1.update("id", (value) => value + 1);
  //map1'deki id değerini +1 olarak güncelle. ifAbsent isimli opsiyonel fonksiyonu var, belirtilen key yoksa ekliyor. bunun yerine direkt olarak putIfAbsent metodu kullanılabilir.
  map1.update("olmayan_id", (value) => value * 4, ifAbsent: () => 40);

  var yeniMap = Map.from({"değer": "yeni"});
  var mapFromEntries = Map.fromEntries(map1.entries);

  print(mapFromEntries);

  var liste = [1, 2, 3, 4];
  var mapFromIterable = Map<String, String>.fromIterable(liste,
      key: (item) {
        return "$item";
      },
      value: (item) => "$item * 2}");
  //key olarak listedeki itemi, value olarak itemin iki katını alan bir map oluştur.
  print(mapFromIterable);
}
