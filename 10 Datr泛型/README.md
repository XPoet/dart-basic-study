## Dart 泛型

- 泛型是指在定义函数、接口或类的时候，不预先指定具体的类型，而在使用的时候再指定类型的一种特性。
- 通俗理解：泛型就是解决类、接口、方法的复用性，以及对不特定数据类型的支持（类型校验）。

### Dart 泛型方法

```dart
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
```

### Dart 泛型类

Dart 泛型类的用法，如下案例：

```dart
// 案例：把下面类转换成泛型类，要求 List 里面可以增加 int 类型的数据，也可以增加 String 类型的数据。
// 但是每次调用增加的类型要统一。
class PrintList1 {
  List list = new List<int>();
  void add(int value) {
    this.list.add(value);
  }

  void printInfo() {
    for (var i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}

// 泛型类
class PrintList2<T> {
  List list = new List<T>();
  void add(T value) {
    this.list.add(value);
  }

  void printInfo() {
    for (var i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}

void main(List<String> args) {
  PrintList1 printList1 = new PrintList1();
  printList1.add(1);
  printList1.add(2);
  printList1.add(3);
  printList1.printInfo();

  print('——————————————————————————————————————————');

  // 使用泛型类，传入 String 类型
  PrintList2 printList2 = new PrintList2<String>();
  printList2.add('A');
  printList2.add('B');
  printList2.add('C');
  printList2.printInfo();

  print('——————————————————————————————————————————');

  // 使用泛型类，传入 int 类型
  PrintList2 printList3 = new PrintList2<int>();
  printList3.add(2);
  printList3.add(4);
  printList3.add(6);
  printList3.printInfo();
}
```

### Dart 泛型接口

Dart 泛型接口的用法，参考如下案例：

```dart
// 案例：实现数据缓存的功能：有文件缓存、和内存缓存。内存缓存和文件缓存按照接口约束实现。
// 1、定义一个泛型接口，约束实现它的子类必须有 getByKey(key) 和 setByKey(key,value)
// 2、要求 setByKey 的时候的 value 的类型和实例化子类的时候指定的类型一致

abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value) {}
}

class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    return null;
  }

  @override
  void setByKey(String key, T value) {
    // TODO: implement setByKey
    print('File cache: 写入{$key:$value}到文件中。');
  }
}

class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    return null;
  }

  @override
  void setByKey(String key, T value) {
    // TODO: implement setByKey
    print('Memory cache: 写入{$key:$value}到内存中。');
  }
}

void main(List<String> args) {
  FileCache fileCache = new FileCache<int>();
  fileCache.setByKey('age', 18); // File cache: 写入{age:18}到文件中。

  print('——————————————————————————————————————————');

  MemoryCache memoryCache = new MemoryCache<Map>();
  memoryCache.setByKey('person', {
    'name': '张三',
    'age': 20
  }); // Memory cache: 写入{person:{name: 张三, age: 20}}到内存中。
}
```
[下一章：11 Dart库](../11%20Dart库)
