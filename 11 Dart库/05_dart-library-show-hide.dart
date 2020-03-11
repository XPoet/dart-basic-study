/**
 * Dart 库的部分导入
 * 如果只需要导入库的一部分，有两种模式：
 * 1、只导入需要的部分，使用 show 关键字，如下例子所示：
 *  import 'library/Animal.dart' show Animal;
 * 
 * 2、隐藏不需要的部分，使用hide关键字，如下例子所示：
 *  import 'library/Animal.dart' hide Animal;
 */
import 'library/Animal.dart' show Animal;

void main(List<String> args) {
  Animal animal = new Animal('鸭子', 1);
  animal.printInfo();
}

