/**
 * Dart中的对象操作符
 * ?   条件操作符
 * as  类型转换
 * is  类型判断
 * ..  级联操作
 */
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
