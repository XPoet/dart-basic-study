/**
 * Dart子类覆写父类的方法
 */
class Person {
  String name;
  num age;
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name}，${this.age}");
  }

  work() {
    print("${this.name}在工作...");
  }
}

class Men extends Person {
  Men(String name, num age) : super(name, age);

  run() {
    print('子类的run()方法！');
    super.work();  // 子类里面调用父类的方法
  }

  // 覆写父类的方法
  @override // 可以写也可以不写，建议加上
  void printInfo() {
    print("姓名：${this.name}，年龄：${this.age}");
  }

  @override
  work() {
    print("${this.name}的工作是写代码");
  }
}

void main(List<String> args) {
  Men m = new Men('程咬金', 88);
  m.printInfo();
  m.work();
  m.run(); 
}
