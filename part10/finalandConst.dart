/* compile time: derleme zamanı
run time: çalışma zamanı
var ile oluşturulan değişkenler bellekte bir yer tutar, bu değişkenlere farklı değerler atandığında önceki yer tamamen silinir ve farklı bir yerde yeni değer tutulur. ama final ve const ile oluşturulan değişkenlere yeni bir değer atanamaz. bellekteki yerleri değişmez. final ile oluşturulan listelere ekleme çıkarma yapılabilir. const ile oluşturulanlara yapılamaz. aynı içerikli farklı birçok liste oluşturulsa da bunlar bellekte tek yerde tutulur ve işaret eden birden fazla değişken olduğu için çalışmaz. performans ve güvenlik açısından immutableları kullanmak avantajlıdır.*/

void main(List<String> args) {
  final String name =
      "irem"; //final dediğim için bu artık bir immutable (değişmez). Buraya artık var diyemeyiz. Ve başka bir değer atayamayız.

  const String surname =
      "aksoy"; //const da final ile aynı mantıkta. fakat run time'da belli olacak değerleri const ile atayamayız. yalnızca compile time'da bilinen değerler içindir. örneğin DateTime.now() const ile atanamaz.
}
