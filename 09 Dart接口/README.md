## Dart接口
### Dart接口的定义
 * 和Java一样，Dart也有接口，但是和Java还是有区别的。
 * Dart的接口没有interface关键字来定义，而是普通类或抽象类都可以作为接口被实现。
 * 同样使用implements关键字进行实现。
 * 但是Dart的接口有点奇怪，如果实现的类是普通类，会将普通类和抽象中的属性的方法全部需要覆写一遍。
 * 抽象类可以定义抽象方法，普通类不可以，所以一般如果要实现像Java接口那样的方式，一般会使用抽象类。
 * 建议使用抽象类定义接口。
 ```dart
// 案例：定义一个数据库接口 DB ，使得 MySQL MongoDB 等数据库可以使用这个接口
abstract class DB {
  String uri;
  add(String data);
  save(String data);
  delete(int id);
}

class MySQL implements DB {
  @override
  String uri;

  MySQL(this.uri);

  @override
  add(String data) {
    // TODO: implement add
    print('MySQL Add $data');
  }

  @override
  save(String data) {
    // TODO: implement save
    return null;
  }

  @override
  delete(int id) {
    // TODO: implement delete
    return null;
  }

}

class MongoDB implements DB {
  @override
  String uri;

  MongoDB(this.uri);

  @override
  add(String data) {
    // TODO: implement add
    print('MongoDB Add $data');
  }

  @override
  save(String data) {
    // TODO: implement save
    return null;
  }

  @override
  delete(int id) {
    // TODO: implement delete
    return null;
  }

}

void main(List<String> args) {

  MongoDB mongoDB = new MongoDB('https://xpoet.cn/');
  
  mongoDB.add('😺');
}
 ```

### Dart接口模块化
将不同的接口抽离成单个文件，需要时通过 import 导入。
```dart
import './interfaces/MySQL.dart';

void main(List<String> args) {

  MySQL mySQL = new MySQL('https://github.com/XPoet');
  mySQL.uri = 'i@xpoet.cn';
  mySQL.add('new data');
}
```

### Dart中一个类实现多个接口
```dart
abstract class A {
  String xxx;
  printA();
}

abstract class B {
  printB();
}

// class C 实现 A, B 两个接口
class C implements A, B {
  @override
  String xxx;

  @override
  printA() {
    // TODO: implement printA
    return null;
  }

  @override
  printB() {
    // TODO: implement printB
    return null;
  }
}

void main(List<String> args) {
  C c = new C();
  c.printA();
  c.printB();
}
```

### Dart中的Mixins
 * Mixins 的中文意思是混入，就是在类中混入其他功能
 * 在 Dart 中可以使用 Mixins 实现类似多继承的功能  
 * 因为 Mixins 使用的条件，随着 Dart 版本一直在变，这里讲的是 Dart2.x 中使用 Mixins 的条件：
   * 1、作为 Mixins 的类只能继承自 Object，不能继承其他类
   * 2、作为 Mixins 的类不能有构造函数
   * 3、一个类可以 Mixins 多个 Mixins 类
   * 4、Mixins 绝不是继承，也不是接口，而是一种全新的特性
   * 5、Mixins 的实例类型就是其超类的子类型

```dart
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

// class C2 继承 Person，混入 B, A
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
```

[下一章：10 Dart泛型](../10%20Dart泛型)
