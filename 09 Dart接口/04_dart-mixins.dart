/**
 * Dart中的mixins
 * mixins的中文意思是混入，就是在类中混入其他功能
 * 在Dart中可以使用mixins实现类似多继承的功能
 */
/*
  因为mixins使用的条件，随着Dart版本一直在变，这里讲的是Dart2.x中使用mixins的条件：
  1、作为mixins的类只能继承自Object，不能继承其他类
  2、作为mixins的类不能有构造函数
  3、一个类可以mixins多个mixins类
  4、mixins绝不是继承，也不是接口，而是一种全新的特性
  5、mixins的实例类型就是其超类的子类型
*/
class A {
  String info = 'this is A';
  void printA() {
    print('A');
  }

  void run() {
    print('class A run');
  }
}

class B {
  void printB() {
    print('B');
  }

  void run() {
    print('class B run');
  }
}

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  void printInfo() {
    print('姓名：$name，年龄：$age');
  }

  void run() {
    print('class Person run');
  }
}

class C with A, B {}

class C2 extends Person with B, A {
  C2(String name, num age) : super(name, age);
}

void main() {
  C c = new C();
  c.printA();
  print(c.info);
  c.printB();

  print('————————————————————————————————');

  C2 c2 = new C2('赵六', 16);
  c2.printInfo();
  print(c2.info);
  c2.run();  // class A run （执行的 with 后面最后一个类的 run() 方法）

  print('————————————————————————————————');
  // mixins的实例类型
  var c3 = new C2('赵七', 16);
  print(c3 is C2);  // true
  print(c3 is A);   // true
  print(c3 is B);   // true
  print(c3 is Person);  // true
}
