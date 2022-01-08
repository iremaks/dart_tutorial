import 'VeriTabaniIslemleri.dart';
import 'setterandGetter.dart';

void main(List<String> args) {
  VeriTabaniIslemleri db = VeriTabaniIslemleri();

  Musteri m1 = Musteri(0);
  m1.musteriNoAta = 1255;
  print(m1.musteriNoSoyle);

  bool sonuc = db.baglanma();
  if (sonuc) {
    print("Bağlantı başarılı");
  } else {
    print("Bağlantı başarısız.");
  }
}
