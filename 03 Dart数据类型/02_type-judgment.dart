/**
 * Dart 数据类型判断
 * 用 is 关键字来判断类型
 * xxx.runtimeType.toString() 获取数据类型
 */

void main(List<String> args) {
  int i = 10;
  double d = 10.10;
  var s = 'this is String';
  bool flag = true;
  List<int> l = new List<int>();
  Map m = new Map();

  print('i的数据类型：${i is int}');
  print('d的数据类型：${d is double}');
  print(s.runtimeType.toString());
  print(flag.runtimeType.toString());
  print(l.runtimeType.toString());
  print(m.runtimeType.toString());
}
