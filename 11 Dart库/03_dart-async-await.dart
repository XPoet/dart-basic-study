/**
 * Dart 中的 async 和 await
 * 1、只有 async 方法才能使用 await 关键字调用方法
 * 2、如果调用别的 async 方法必须使用 await 关键字
 * 3、async 是让方法变成异步
 * 4、await 是等待异步方法执行完成
 */

void main(List<String> args) async {
  var result = await asyncTest();
  print('result: $result');
}

// 异步方法
asyncTest() async {
  return 'hello async';
}
