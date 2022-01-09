void main(List<String> args) {
  try {
    Student irem = Student(-5);
    print(irem.age);
  } on AgeException catch (e) {
    print(e.message);
  }
}

class AgeException implements Exception {
  String message;

  AgeException({this.message = "AgeException"});
}

class Student {
  int age = 0;

  Student(int age) {
    if (age < 0) {
      throw AgeException(message: "AgeException - Age can't be negative.");
    } else
      this.age = age;
  }
}
