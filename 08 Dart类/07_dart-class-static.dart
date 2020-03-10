/**
 * Dart中的静态类和静态方法
 * 1、使用 static 关键字定义静态成员和方法
 * 2、静态方法不能访问非静态属性，非静态方法可以访问静态成员
 */
class Person {
  static String name = '张三';
  int age = 18;

  static void printInfo() {
    print('我是一个静态方法');
    // print(this.name);  // 报错，静态方法不能访问非静态属性
  }

  getInfo() {
    print(Person.name);
    print(this.age); // 非静态方法可以访问静态成员

    printInfo(); // 调用静态方法
  }
}

void main(List<String> args) {
  Person p = new Person();
  p.getInfo();
  Person.printInfo(); // 调用静态方法，不用new(实例化)，直接调用
}
