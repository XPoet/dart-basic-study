/**
 * Dart自定义类的构造函数
 */

// 创建一个自定义的类 Person
class Person1 {
  String name;
  int age;

  // 默认的构造函数，在类实例化时自执行
  Person1(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // 构造函数简写
  // Person(this.name, this.age);

  void printPersonInfo() {
    print('name: $name，age: $age');
  }
}

// Dart里面的构造函数可以写多个
// 命名构造函数
class Person2 {
  String name;
  int age;

  // 构造函数简写
  Person2(this.name, this.age);

  Person2.rename() {
    print('我是命名构造函数!');
  }

  void printPersonInfo() {
    print('name: $name，age: $age');
  }
}

void main(List<String> args) {
  // 实例化 Person1 类
  Person1 p1 = new Person1('李四', 19);
  p1.printPersonInfo();

  print('————————————————————————————');

   // 实例化 Person2 类
  Person2 p2 = new Person2('王五', 20);  // 实例化类的时调用的是默认构造函数
  p2.printPersonInfo();

  Person2 p2_2 = new Person2.rename();
  p2_2.printPersonInfo();
}
