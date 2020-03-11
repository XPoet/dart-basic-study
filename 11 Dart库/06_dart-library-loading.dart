/**
 * Dart 延迟加载（懒加载），即在需要的时候再进行加载。
 * 懒加载的最大好处是可以减少APP的启动时间
 * 懒加载使用 deferred as 关键字来指定
 * 当需要使用的时候，需要使用 loadLibrary() 方法来加载
 */
import 'library/Animal.dart' deferred as A;
import 'package:date_format/date_format.dart' deferred as F;

void main(List<String> args) async {
  await A.loadLibrary();
  await F.loadLibrary();

  var a = new A.Animal('兔纸', 9);
  a.printInfo();

  print('——————————————————————————————————————————');

  print(F.formatDate(DateTime(2020, 02, 02), [F.yyyy, '*', F.mm, '*', F.dd]));
}
