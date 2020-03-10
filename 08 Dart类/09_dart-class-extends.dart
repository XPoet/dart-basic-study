/**
 * Dart类的继承
 */
/*
面向对象的三大特性：封装 、继承、多态
Dart中的类的继承：  
    1、子类使用extends关键字来继承父类
    2、子类会继承父类里面可见的属性和方法 但是不会继承构造函数
    3、子类能复写父类的方法 getter和setter
*/

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
