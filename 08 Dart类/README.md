## Dart 类

### Dart 类的介绍

- 面向对象编程(OOP)的三个基本特征：封装、继承、多态。

  - 封装：封装是对象和类概念的主要特性。封装，把客观事物封装成抽象的类，并且把自己的部分属性和方法提供给其他对象调用, 而一部分属性和方法则隐藏。

  - 继承：面向对象编程 (OOP) 语言的一个主要功能就是“继承”。继承是指这样一种能力：它可以使用现有类的功能，并在无需重新编写原来的类的情况下对这些功能进行扩展。
  - 多态：允许将子类类型的指针赋值给父类类型的指针, 同一个函数调用会有不同的执行效果。

- Dart 所有的东西都是对象，所有的对象都继承自 Object 类。

- Dart 是一门使用类和单继承的面向对象语言，所有的对象都是类的实例，并且所有的类都是 Object 的子类。

- 一个类通常由属性和方法组成。

### Dart 类的定义
Dart 是一门使用类和单继承的面向对象语言，所有的对象都是类的实例，并且所有的类都是Object的子类。
```dart
// 创建一个自定义的类 Person
class Person {
  String name = '张三';
  int  age = 18;
  String _job;  // 在变量名前面加下划线，表示私有属性
  
  void printPersonInfo(){
    print('name: $name，age: $age');
  }

  void setAge (age) {
    this.age = age;
  }
}

void main(List<String> args) {

  // 实例化Person类
  Person p1 = new Person();
  p1.printPersonInfo();
  p1.setAge(99);
  p1.printPersonInfo();
  
}
```

### Dart自定义类的构造函数
```dart
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
```

### 自定义的类单独抽离成模块
```dart
import 'moduls/Person.dart';
import 'moduls/Animal.dart' as A;

void main(List<String> args) {
  // 调用其他文件的类
  Person p = new Person('孙悟空', 777);
  p.printPersonInfo();

  print('————————————————————————————');

  A.Animal a = new A.Animal('奶牛', 5);
  a.printInfo();
  a.execRun();
}
```

### Dart类的getter和setter
```dart
class Rect {
  num height;
  num width;
  Rect(this.height, this.width);
  getArea() {
    return this.height * this.width;
  }

  // getter
  // 获取矩形周长
  get perimeter {
    return this.height * 2 + this.width * 2;
  }

  // setter
  // 设置矩形高度
  set rectHeight(num height) {
    this.height = height;
  }
}

void main(List<String> args) {
  Rect r = new Rect(10, 20);
  print('矩形面积：${r.getArea()}');

  print('————————————————————');

  print('矩形周长：${r.perimeter}');  // getter用法

  // 设置矩形的高度
  r.rectHeight = 6;  // setter用法
  print('重新设置过高度之后的矩形周长：${r.perimeter}');  
}
```

### Dart类的初始化
```dart
class Rect {
  int height;
  int width;

  // 类的属性初始化写法
  Rect(): height = 2, width = 3 {
    print('height初始化的值：$height, height初始化的值：$width');
  }

  getArea() {
    return this.height * this.width;
  }
}

void main(List<String> args) {
  Rect r  = new Rect();
  print(r.getArea());
}
```

### Dart中的静态类和静态方法
 * 1、使用 static 关键字定义静态成员和方法。
 * 2、静态方法不能访问非静态属性，非静态方法可以访问静态成员。
 ```dart
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
 ```

 ### Dart中的对象操作符
 * ?   条件操作符
 * as  类型转换
 * is  类型判断
 * ..  级联操作
 ```dart
 class Person {
  String name;
  num age;

  Person(this.name, this.age);

  void printInfo() {
    print('name: $name, age: $age');
  }
}

void main(List<String> args) {
  Person p = new Person('诸葛亮', 67);

  // ? 条件操作
  p?.printInfo();

  print('————————————————————————————————————');

  // is 类型判断
  if (p is Person) {
    p.name = '李四';
  }

  p.printInfo();

  print(p is Object);

  print('————————————————————————————————————');

  // as 类型转换
  var p2;
  p2 = '';
  p2 = new Person('唐三藏', 100);
  p2.printInfo(); // IDE不会自动推断出该方法名
  (p2 as Person).printInfo(); // 类型转换后，IDE会智能提示

  print('————————————————————————————————————');

  // .. 级联操作
  Person p3 = new Person('沙和尚', 99);
  p3.printInfo();

  p3.name = '沙和尚牛逼';
  p3.age = 111;
  p3.printInfo();

  // 等同于
  p3
    ..name = '沙和尚无敌'
    ..age = 222
    ..printInfo();
}
 ```

### Dart类的继承
- 面向对象的三大特性：封装 、继承、多态
- Dart中的类的继承：  
    - 1、子类使用extends关键字来继承父类。
    - 2、子类会继承父类里面可见的属性和方法，但是不会继承构造函数。
    - 3、子类能覆写父类的方法getter和setter。

```dart
class Person1 {
  String name = '张三';
  num age = 18;
  void printInfo() {
    print('name: $name, age: $age');
  }
}

// Men1 继承 Person1
class Men1 extends Person1 {}

// ——————————————————————————————————————————————————

class Person2 {
  String name;
  num age;

  Person2(this.name, this.age);

  void printInfo() {
    print('name: $name, age: $age');
  }
}

// Men2 继承 Person2
class Men2 extends Person2 {
  Men2(String name, num age) : super(name, age) {}
}

// ——————————————————————————————————————————————————
// Men3 继承 Person2
class Men3 extends Person2 {
  String sex;
  Men3(String name, num age, String sex) : super(name, age) {
    this.sex = sex;
  }

  printUserInfo() {
    print('name: $name, age: $age, 性别: $sex');
  }
}

// ——————————————————————————————————————————————————
class Person4 {
  String name;
  num age;
  Person4(this.name, this.age);
  Person4.xxx(this.name, this.age);
  void printInfo() {
    print("姓名：${this.name}，年龄：${this.age}");
  }
}

class Men4 extends Person4 {
  String sex;
  Men4(String name, num age, String sex) : super.xxx(name, age) {
    this.sex = sex;
  }
  showUserInfo() {
    print("姓名：${this.name}，年龄：${this.age}，性别：${this.sex}");
  }
}

void main(List<String> args) {
  Men1 m = new Men1();
  m.printInfo();

  print('——————————————————————————————————————————');

  Men2 m2 = new Men2('李白', 89);
  m2.printInfo();

  print('——————————————————————————————————————————');
  Men3 m3 = new Men3('李清照', 22, '女');
  m3.printUserInfo();

  print('——————————————————————————————————————————');
  Men4 m4 = new Men4('辛弃疾', 30, '男');
  m4.showUserInfo();
}
```

### Dart子类覆写父类的方法
 覆写父类的方法，建议在方法名前面加上@override，有助于辨识，也可以不加。
```dart
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
```

### Dart抽象类
 * Dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口。
   * 1、抽象类通过 abstract 关键字来定义。
   * 2、抽象方法不能用 abstract 声明，Dart中没有方法体的方法我们称为抽象方法。
   * 3、如果子类继承抽象类必须得实现里面的抽象方法。
   * 4、如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法。
   * 5、抽象类不能被实例化，只有继承它的子类可以。

 * extends抽象类 和 implements 的区别：
   * 1、如果要复用抽象类里面的方法，并且要用抽象方法约束自类的话我们就用 extends 继承抽象类。
   * 2、如果只是把抽象类当做标准的话我们就用 implements 实现抽象类

```dart
// 案例：定义一个Animal 类要求它的子类必须包含eat方法
abstract class Animal {
  eat(); // 抽象方法
  run(); // 抽象方法
  printInfo() {
    print('我是抽象类里面的普通方法');
  }
}

class Dog extends Animal {
  @override
  eat() {
    // TODO: implement eat
    print('Dog eat...');
  }

  @override
  run() {
    // TODO: implement run
    print('Dog run...');
  }
}

class Cat extends Animal {
  @override
  eat() {
    // TODO: implement eat
    print('Cat eat...');
  }

  @override
  run() {
    // TODO: implement run
    print('Cat run...');
  }
}

void main(List<String> args) {
  Dog d = new Dog();
  d.eat();
  d.run();
  d.printInfo();

  print('——————————————————————');

  Cat c = new Cat();
  c.eat();
  c.run();
  c.printInfo();

  print('——————————————————————');
  // Animal a = new Animal(); // 报错，抽象不能被实例化！！
}
```

### Dart中的多态
 * 允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果。
 * 子类的实例赋值给父类的引用。
 * 多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现。
 ```dart
abstract class Animal {
  eat(); //抽象方法
}

class Dog extends Animal {
  @override
  eat() {
    print('Dog eat...');
  }

  run() {
    print('Dog run...');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('Cat eat...');
  }

  run() {
    print('Cat run...');
  }
}

void main(List<String> args) {
  Animal d = new Dog();
  Animal c = new Cat();

  d.eat();
  c.eat();
}
 ```

[下一章：09 Dart接口](../09%20Dart接口)