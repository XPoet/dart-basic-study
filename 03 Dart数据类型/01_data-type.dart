/**
 * Dart数据类型
 */

/**
 * Dart数据类型
 * 常用数据类型：
 * Numbers（数值）：int、double
 * Strings（字符串）：String
 * Boolean(布尔)：bool
 * List（数组）：在Dart中，数组是列表对象，所以大多数人只是称它们为列表
 * Maps（字典）：通常来说，Map是一个键值对相关的对象。 键和值可以是任何类型的对象。每个键只出现一次，而一个值则可以出现多次。
 */

/**
 * 不常用到的数据类型
 * Runes：
 * Rune是UTF-32编码的字符串。它可以通过文字转换成符号表情或者代表特定的文字。
 * 
 * main() {
 *      var clapping = '\u{1f44f}';
 *      print(clapping);
 *      print(clapping.codeUnits);
 *      print(clapping.runes.toList());
 *    
 *      Runes input = new Runes(
 *          '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
 *      print(new String.fromCharCodes(input));
 *   }
 * 
 * Symbols：
 * Symbol对象表示在Dart程序中声明的运算符或标识符。
 * 可能永远不需要使用符号，但它们对于按名称引用标识符的API非常有用，因为缩小会更改标识符名称而不会更改标识符符号。
 * 要获取标识符的符号，请使用符号文字，它只是＃后跟标识符
 * 在 Dart 中符号用 # 开头来表示，入门阶段不需要了解这东西，可能永远也用不上。
 * http://dart.goodev.org/guides/libraries/library-tour#dartmirrors---reflection
 */

void main(List<String> args) {
  /* 数值类型 */
  // int 必须是整型
  int num_1 = 10;

  // double 既可以是整型 也可以是浮点型
  double num_2 = 10;
  double num_3 = 10.10;
  print('int num_1: $num_1');
  print('double num_2: $num_2');
  print('double num_3: $num_3');

  print('=============================================');
  /* 字符串 */
  // 字符串定义：var 或 String
  var str_1 = 'this is String';
  String str_2 = 'this is String too';
  print('String str_1: $str_1');
  print('String str_2: $str_2');

  // 字符拼接
  print(str_1 + str_2);
  print(str_1 + ' ' + str_2);

  print('=============================================');
  /* 布尔类型 bool */
  bool flag = true;
  print('bool flag: $flag');
  print('bool !flag: ${!flag}');

  print('=============================================');
  /* List 数组/集合 */
  // 定义方式一：
  var list_1 = ['a', 'b', 'c'];
  print('List list_1: $list_1');
  print('list_1.length: ${list_1.length}');

  // 定义方式二：
  List<int> list_2 = new List<int>();
  list_2.add(1);
  list_2.add(2);
  list_2.add(3);
  print('List<int> list_2: $list_2');

  print('=============================================');
  /* Maps 字典 */
  // 定义方式一：
  var map_1 = {
    "name": "张三",
    "age": 18,
    "work": ["打游戏", "写代码"]
  };
  print('Map map_1: $map_1');
  print('map_1["name"] ${map_1['name']}');

  // 定义方式二：
  Map map_2 = new Map();
  map_2['a'] = 'aa';
  map_2['b'] = 'bb';
  map_2['c'] = 'cc';
  print('Map map_2: $map_2');


}
