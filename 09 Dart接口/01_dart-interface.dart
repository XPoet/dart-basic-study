/**
 * Dart接口
 * 和Java一样，Dart也有接口，但是和Java还是有区别的。
 * Dart的接口没有interface关键字来定义，而是普通类或抽象类都可以作为接口被实现。
 * 同样使用implements关键字进行实现。
 * 但是Dart的接口有点奇怪，如果实现的类是普通类，会将普通类和抽象中的属性的方法全部需要覆写一遍。
 * 抽象类可以定义抽象方法，普通类不可以，所以一般如果要实现像Java接口那样的方式，一般会使用抽象类。
 * 建议使用抽象类定义接口。
*/

// 案例：定义一个数据库接口 DB ，使得 MySQL MongoDB 等数据库可以使用这个接口
abstract class DB {
  String uri;
  add(String data);
  save(String data);
  delete(int id);
}

class MySQL implements DB {
  @override
  String uri;

  MySQL(this.uri);

  @override
  add(String data) {
    // TODO: implement add
    print('MySQL Add $data');
  }

  @override
  save(String data) {
    // TODO: implement save
    return null;
  }

  @override
  delete(int id) {
    // TODO: implement delete
    return null;
  }

}

class MongoDB implements DB {
  @override
  String uri;

  MongoDB(this.uri);

  @override
  add(String data) {
    // TODO: implement add
    print('MongoDB Add $data');
  }

  @override
  save(String data) {
    // TODO: implement save
    return null;
  }

  @override
  delete(int id) {
    // TODO: implement delete
    return null;
  }

}

void main(List<String> args) {

  MongoDB mongoDB = new MongoDB('https://xpoet.cn/');
  
  mongoDB.add('😺');
}
