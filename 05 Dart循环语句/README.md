## Dart循环语句

### 自增++ 和 自减--
 * ++ 表示自增 1
 * -- 表示自减 1
 * 在赋值运算中，如果 ++ 或 -- 写在前面，表示先运算，再赋值；如果 ++ 或 -- 写在后面，则要先赋值再运算。


### for循环
```dart
  for (int i = 0; i <= 50; i++) {
    if (i % 2 == 0) {
      print('0~50中的偶数：$i');
    }
  }
```

### while循环 和 do while循环
```dart
  // 打印出1~10的数
  int i = 1;
  while (i < 10) {
    print('i: $i');
    i++;
  }

  // 求1+2+3+4 ...+100的和
  int n = 1;
  int sum = 0;

  do {
    sum += n;
    n++;
  } while (n <= 100);
  print('1~100的和：$sum');
}
```

### break 和 continue
* break语句功能：
    1. 在switch语句中使流程跳出switch结构。
    2. 在循环语句中使流程跳出当前循环，遇到break循环终止，后面代码也不会执行。
    3. 如果在循环中已经执行了break语句，就不会执行循环体中位于break后的语句。
    4. 在多层循环中，一个break语句只能向外跳出一层。
    5. break可以用在switch case中 也可以用在 for 循环和 while循环中

* continue语句的功能：
    1. continue只能在循环语句中使用，使本次循环结束，即跳过循环体的下面尚未执行的语句，接着进行下次的是否执行循环的判断。
    2. continue可以用在 for循环 以及 while循环 中，但是不建议用在 while循环 中，不小心容易死循环。

[下一章：06 Dart集合类型List、Set、Map详解](../06%20Dart集合类型List、Set、Map详解)
