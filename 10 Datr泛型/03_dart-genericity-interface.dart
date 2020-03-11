/**
 * Dart泛型接口
 */

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
