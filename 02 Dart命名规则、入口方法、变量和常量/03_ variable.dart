/* Dart变量 */
void main(List<String> args) {
  /**
 * Dart变量
 * Dart定义变量时可以不预先定义变量类型，程序会自动推断类型
 * 定义变量可以通过 var 关键字来申明变量
 */

  var name = '张三';
  var age = 18;

  print('姓名：$name, 年龄：$age');

  // 或者在变量前面加上类型，类似Java语法
  String name_2 = '李四';
  int age_2 = 19;
  print('姓名：$name_2, 年龄：$age_2');

  // 注意：加了 var 关键字就不要再上类似，写了类型也不要加上 var !!
}
