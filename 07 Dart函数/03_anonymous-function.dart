/**
 * Dart 匿名函数、自执行函数、方法的递归
 */
void main(List<String> args) {
  // 匿名函数
  var printNumber = (int n) {
    print(n);
  };

  printNumber(999);

  // 自执行方法
  (() {
    print('我是一个自执行方法！');
  })();

  // 方法的递归
  // 使用方法递归，求1~100的和
  var sum = 0;
  fn(int n) {
    sum += n;
    n == 0 ? false : fn(n - 1);
  }
  fn(100);
  print('sum: $sum');
}
