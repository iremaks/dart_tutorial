import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKokAlma(-6);
    print("Girilen sayının karekökü  ${deger.toStringAsFixed(2)} dir.");
  } catch (e) {
    print(e);
  }
}

double kareKokAlma(int i) {
  if (i < 0) {
    throw FormatException("Negatif değer giremezsiniz.");
  } else
    return sqrt(i);
}
