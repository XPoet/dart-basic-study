/**
 * Dart抽象类
 * Dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口。
 * 1、抽象类通过 abstract 关键字来定义。
 * 2、抽象方法不能用 abstract 声明，Dart中没有方法体的方法我们称为抽象方法。
 * 3、如果子类继承抽象类必须得实现里面的抽象方法。
 * 4、如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法。
 * 5、抽象类不能被实例化，只有继承它的子类可以。
 * 
 * extends抽象类 和 implements 的区别：
 * 1、如果要复用抽象类里面的方法，并且要用抽象方法约束自类的话我们就用 extends 继承抽象类。
 * 2、如果只是把抽象类当做标准的话我们就用 implements 实现抽象类
 */

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
