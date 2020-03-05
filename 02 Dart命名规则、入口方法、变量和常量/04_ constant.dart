/* Dart常量 */
void main(List<String> args) {

 /**
 * Dart常量
 * Dart定义常量用 final 和 const 关键字来修饰符 
 * const值不变，一开始就得赋值
 * final 可以开始不赋值，但只能赋值一次
 * final 不仅有const的编译时常量的特性，最重要的它是运行时常量，并且final是惰性初始化，即在运行时第一次使用前才初始化
 * 常量是永远不改量的量，用final或const修饰它，而不是使用var或其他变量类型
 */

  // const 常量
  const PI = 3.14159;
  print('PI: $PI');

  // final 常量
  final PI_2 = 3.1415;
  print('final常量 PI_2: $PI_2');

  final a = new DateTime.now();
  print(a);  // 2020-03-05 12:02:05.759293

  // const a = new DateTime.now();   // 报错

  // 区别：
  // final 可以开始不赋值 只能赋一次；
  // final不仅有const的编译时常量的特性，最重要的它是运行时常量，并且final是惰性初始化，即在运行时第一次使用前才初始化。




}
