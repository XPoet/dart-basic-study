/**
 * 把自定义的类单独抽离成一个模块
 */

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
