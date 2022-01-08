void main(List<String> args) {
  AdminUser admin1 = AdminUser();
  User ornekUser = ReadOnlyUser(); //upcasting(yukarı çevrim).

  List<User> tumUserlar = [];
  tumUserlar.add(ornekUser);
  tumUserlar.add(admin1);

  test(admin1);

  admin1.girisYap(); //override.
}

void test(User kullanici) {
  //polimorfizm
  kullanici.girisYap();
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("Parent user giriş yaptı.");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal user arkadaş davet etti.");
  }

  @override
  void girisYap() {
    print("Normal user giriş yaptı.");
  }
}

class ReadOnlyUser extends NormalUser {
  void adiniSoyle() {
    print("I can read only.");
  }
}

class AdminUser extends User {
  void toplamKullaniciyiSoyle() {
    print("Toplam user sayısı x.");
  }

  @override
  void girisYap() {
    print("Admin user giriş yaptı.");
  }
}
