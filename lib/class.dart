// ignore_for_file: unnecessary_this, avoid_print
// command : class
class Construction {
  String detail;
  Construction(this.detail);
  @override
  String toString() {
    return this.detail;
  }

  void console() {
    print("i am using class");
  }
}

class Destruction {
  String name;
  Destruction({required this.name});
  @override
  String toString() {
    return this.name;
  }
}
