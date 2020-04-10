## Dart命名规则
 * 1、变量名称必须由数字、字母、下划线和美元符($)组成
 * 2、命名开头不能是数字
 * 3、命名不能是保留字和关键字
 * 4、变量的名字是区分大小写的如：age和Age是不同的变量。在实际的运用中，建议不要用一个单词大小写区分两个变量。
 * 5、命名一定要见名思意：变量名称建议用名词，方法名称建议用动词
 * 命名规则跟JavaScript、TypeScript、Java等语言相似

## Dart入口主方法
Dart入口主方法 main()，表示一个Dart程序从这里开始启动，跟Java类似。
demo:
```
void main(List<String> args) {
  print('Dart程序入口');
}
```

## Dart变量
* Dart定义变量时可以不预先定义变量类型，程序会自动推断类型
* 定义变量可以通过 var 关键字来申明变量
```dart
var name = '李白';
int age = 99;
```

## Dart常量
 * Dart定义常量用 final 和 const 关键字来修饰符 
 * const值不变，一开始就得赋值
 * final 可以开始不赋值，但只能赋值一次
 * final 不仅有const的编译时常量的特性，最重要的它是运行时常量，并且final是惰性初始化，即在运行时第一次使用前才初始化
 * 常量是永远不改量的量，用final或const修饰它，而不是使用var或其他变量类型
 ```dart
// const 常量
  const PI = 3.14159;
  print('PI: $PI');

  // final 常量
  final PI_2 = 3.1415;
  print('final常量 PI_2: $PI_2');

  final a = new DateTime.now();
  print(a);  // 2020-03-05 12:02:05.759293

  // const a = new DateTime.now();   // 报错
  // final 和 const 区别：
  // final 可以开始不赋值，但只能赋一次；
  // final不仅有const的编译时常量的特性，最重要的它是运行时常量，并且final是惰性初始化，即在运行时第一次使用前才初始化。

```
[下一章：03 数据类型](../03%20Dart数据类型)