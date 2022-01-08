import 'dart:io';

void main(List<String> args) {
  print("adınızı girin");
  String? isim = stdin.readLineSync();
  print(isim);

  print("yaşınızı girin");
  int yas = int.parse(stdin.readLineSync()!);
  print("yaşınız $yas");
}
