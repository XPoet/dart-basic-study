/**
 * Dart泛型
 * 泛型是指在定义函数、接口或类的时候，不预先指定具体的类型，而在使用的时候再指定类型的一种特性。
 * 通俗理解：泛型就是解决类、接口、方法的复用性，以及对不特定数据类型的支持（类型校验）
 */

// 不使用泛型存在的问题
// 1、只能返回 String 类型数据
String getData1(String data) {
  return data;
}

// 2、只能返回 int 类型数据
int getData2(int data) {
  return data;
}

// 3、能返回 String 或 int 类型数据，不指定类型可以解决这个问题，但放弃了类型检查
getData3(data) {
  return data;
}

// 修改：使用泛型，传入什么类型，就返回什么类型。T 表示泛型
getData<T>(T data) {
  return data;
}

void main(List<String> args) {
  print(getData<int>(10));
  print(getData<String>('this is string'));
}
