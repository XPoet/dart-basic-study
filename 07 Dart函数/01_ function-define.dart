/**
 * Dart函数的定义
 */
/* 
  内置方法/函数：
    如：print();

  自定义方法：
      格式：
      返回类型  方法名称（参数1，参数2,...）{
        方法体
        return 返回值;
      }
 */

void printInfo() {
  print('我是一个自定义方法！');
}

int getNumber() {
  return 18;
}

String getString() {
  return 'this is string';
}

void main(List<String> args) {
  printInfo();
  print(getNumber());
  print(getString());

  // 方法的作用域
  void fn1() {
    String getA() {
      return 'A';
    }
  }

  //  getA(); // 报错
  fn1();

  print('————————————————————————————————————————');

  // 1、定义一个方法，求1到n的所有数的和，例如：n=60，1+2+3+...+60
  int addUp(int n) {
    int sum = 0;
    for (var i = 0; i <= n; i++) {
      sum += n;
    }
    return sum;
  }

  print(addUp(60));

  print('————————————————————————————————————————');

  // 2、定义一个方法然后打印用户信息
  String printUserInfo(String name, int age) {
    // 形参
    return '姓名：$name，年龄：$age';
  }

  print(printUserInfo('猪八戒', 9)); // 实参

  print('————————————————————————————————————————');

  // 3、定义一个带可选参数的方法
  String getUserInfo(String name, [int age]) {
    if (age != null) {
      return '姓名：$name，年龄：$age';
    } else {
      return '姓名：$name';
    }
  }

  print(getUserInfo('沙和尚', 10));
  print(getUserInfo('沙和尚'));

  print('————————————————————————————————————————');

  // 4、定义一个带默认参数的方法
  String getUserInfo2(String name, [String sex = '男', int age]) {
    if (age != null) {
      return '姓名：$name，性别：$sex，年龄：$age';
    } else {
      return '姓名：$name，性别：$sex，年龄：不告诉你！！！！';
    }
  }

  print(getUserInfo2('嫦娥', '女', 68));
  print(getUserInfo2('嫦娥', '女'));
  print(getUserInfo2('嫦娥'));

  print('————————————————————————————————————————');

  // 5、定义一个命名参数的方法
  String getUserInfo3(String name, {String sex = '男', int age}) {
    if (age != null) {
      return '姓名：$name，性别：$sex，年龄：$age';
    } else {
      return '姓名：$name，性别：$sex，年龄：保密 *_*';
    }
  }

  print(getUserInfo3('玉兔'));
  print(getUserInfo3('玉兔', sex: '女'));
  print(getUserInfo3('玉兔', sex: '女', age: 99));

  print('————————————————————————————————————————');

  // 6、实现一个把 方法 当做 参数 的方法
  fn6(fn) {
    fn();
  }

  fn6_1() {
    print('我是一个方法！');
  }

  fn6(fn6_1);
}
