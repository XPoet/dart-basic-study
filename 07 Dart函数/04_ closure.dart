/**
 * Dart 闭包
 */
/* 
   1、全局变量特点： 全局变量会常驻内存、全局变量会污染全局
   2、局部变量的特点： 不常驻内存会被垃圾机制回收、不会污染全局
   想实现的功能：
     1、常驻内存
     2、不污染全局
   于是就产生了闭包，闭包可以实现这个功能。
   
   闭包：函数嵌套函数，内部函数会调用外部函数的变量或参数，变量或参数不会被系统回收(不会释放内存)
   闭包的写法：函数嵌套函数，并 return 里面的函数，这样就形成了闭包。
*/

// 全局变量
int a = 123;
void main(List<String> args) {

  printInfo() {
    // 局部变量
    String myString = 'this is a local variabal';
  }

  // 闭包
  closureFn() {
    int localVariableNumber = 888;   // 该变量常驻内存，又不会污染全局
    return () {
      localVariableNumber++;
      print(localVariableNumber);
    };
  };

  // 使用闭包
  var fn = closureFn();
  fn(); // 889
  fn(); // 890
  fn(); // 891
}
