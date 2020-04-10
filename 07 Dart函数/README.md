## Dart 函数

### 函数的定义

- 内置方法/函数：

  ```
  如：print();
  ```

- 自定义方法：
  ```
  格式：
    返回类型  方法名称（参数1，参数2,...）{
      方法体
      return 返回值;
    }
  ```

### 箭头函数

```dart
  List<String> myList1 = ['苹果', '香蕉', '西瓜'];

  // 使用 forEach 打印出 myList 里面的数据
  myList1.forEach((value) {
    print(value);
  });

  // 箭头函数，用法1
  myList1.forEach((value) => print(value));

  // 箭头函数，用法2
  myList1.forEach((value) => {
        print(value) // 只能有一行代码，不能加分号！
      });


  List<int> myList2 = [4, 1, 2, 3, 4];

  // 修改下面 myList2 里面的数据，让数组中大于2的值乘以2
  // 写法1
  var myList2_new = myList2.map((v) {
    if (v > 2) {
      return v * 2;
    }
    return v;
  });
  print(myList2_new);

  //  写法2
  print(myList2.map((v) => v > 2 ? v * 2 : v));


  /*
  需求：
  1、定义一个方法 isEvenNumber 来判断一个数是否是偶数
  2、定义一个方法打印1-n以内的所有偶数
  */
  bool isEvenNumber(int n) {
    return n % 2 == 0 ? true : false;
  }

  void printEvenNumber(int n) {
    for (var i = 0; i <= n; i++) {
      if (isEvenNumber(i)) {
        print('偶数: $i');
      }
    }
  }

  printEvenNumber(10);
```

### 匿名函数
```dart
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
```

### 闭包
- 全局变量特点： 全局变量会常驻内存、全局变量会污染全局。  
- 局部变量的特点： 不常驻内存会被垃圾机制回收、不会污染全局。  
- 想实现的功能：  
1、常驻内存  
2、不污染全局  
于是就产生了闭包，闭包可以实现这个功能。  
- 闭包：函数嵌套函数，内部函数会调用外部函数的变量或参数，变量或参数不会被系统回收(不会释放内存)  
- 闭包的写法：函数嵌套函数，并 return 里面的函数，这样就形成了闭包。
```dart
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
```

[下一章：08 Dart类](../08%20Dart类)

