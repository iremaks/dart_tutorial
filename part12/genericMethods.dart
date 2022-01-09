void main(List<String> args) {
  double intOrtalama = ortalamaHesapla<int>(5, 4);
}

double ortalamaHesapla<T extends num>(T s1, T s2) {
  //num sınıfından herhangi bir T alabilir.
  return (s1 + s2) / 2;
}
