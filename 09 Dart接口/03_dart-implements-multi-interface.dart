/**
 * Dart中一个类实现多个接口
 */

abstract class A {
  String xxx;
  printA();
}

abstract class B {
  printB();
}

// class C 实现 A, B 两个接口
class C implements A, B {
  @override
  String xxx;

  @override
  printA() {
    // TODO: implement printA
    return null;
  }

  @override
  printB() {
    // TODO: implement printB
    return null;
  }
}

void main(List<String> args) {
  C c = new C();
  c.printA();
  c.printB();
}
