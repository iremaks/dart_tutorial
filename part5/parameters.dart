void main(List<String> args) {
  print(topLamaIslemi(2, 4, 5));
  int carpim = carpmaIslemi(s5: 9, s6: 4, s4: 7);
  print(carpim);
}

//optional parameters
int topLamaIslemi(int s1, int s2, [int s3 = 0]) {
  return s1 + s2 + s3;
}

//optional named parameters. istediğimiz sırada seçmeli parametre girmek için. null da bırakılabilir, o yüzden varsayılan değer atıyoruz. en başa opsiyonel olmayan bir parametre eklenebilir.

int carpmaIslemi({int s4 = 0, int s5 = 0, int s6 = 0}) {
  return s4 * s5 * s6;
}
