/**
 * Dart中创建自定义类
 * Dart是一门使用类和单继承的面向对象语言，所有的对象都是类的实例，并且所有的类都是Object的子类。
 */


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