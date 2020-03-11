/**
 * Dart泛型类的用法
 */

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

  PrintList2 printList2 = new PrintList2<String>();
  printList2.add('A');
  printList2.add('B');
  printList2.add('C');
  printList2.printInfo();

  print('——————————————————————————————————————————');
  PrintList2 printList3 = new PrintList2<int>();
  printList3.add(2);
  printList3.add(4);
  printList3.add(6);
  printList3.printInfo();
}
