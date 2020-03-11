class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void printPersonInfo() {
    print('name: $name，age: $age');
  }

  void setAge(age) {
    this.age = age;
  }
}
