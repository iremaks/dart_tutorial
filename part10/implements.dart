void main(List<String> args) {}

//implements, kalıtım şartı olmadan, bir sınıfı birden fazla soyut sınıfla bağlamaya yarar.

abstract class Bitkiler {}

abstract class KirmiziRenkliler {
  void kirmizi();
}

abstract class Meyveler {
  void meyve();
}

abstract class Sebzeler {
  void sebze();
}

class Cilek extends Bitkiler implements KirmiziRenkliler, Meyveler {
  @override
  void kirmizi() {
    // TODO: implement kirmizi
  }
  @override
  void meyve() {
    // TODO: implement meyve
  }
}

class UgurBocegi implements KirmiziRenkliler {
  @override
  void kirmizi() {
    // TODO: implement kirmizi
  }
}
