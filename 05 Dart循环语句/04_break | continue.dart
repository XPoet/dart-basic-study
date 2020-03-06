/**
 * 循环中的 break 和 continue
 */
void main(List<String> args) {
/* 
  break语句功能：
    1、在switch语句中使流程跳出switch结构。
    2、在循环语句中使流程跳出当前循环，遇到break循环终止，后面代码也不会执行。

  强调:
    1、如果在循环中已经执行了break语句，就不会执行循环体中位于break后的语句。
    2、在多层循环中，一个break语句只能向外跳出一层。
    3、break可以用在switch case中 也可以用在 for 循环和 while循环中

continue语句的功能：
    1、continue只能在循环语句中使用，使本次循环结束，即跳过循环体的下面尚未执行的语句，接着进行下次的是否执行循环的判断。
    2、continue可以用在 for循环 以及 while循环 中，但是不建议用在 while循环 中，不小心容易死循环。
 */

  // 打印出1~10的数，i等于4跳出循环
  for (var i = 0; i < 10; i++) {
    if (i == 4) continue;
    print('i: $i');
  }

  print('————————————————————————————————————');
  // break 只能向外跳出一层
  for (var i = 0; i < 5; i++) {
    print('外层i: $i');
    for (var j = 0; j < 3; j++) {
      if (j == 2) break;
      print('里层j: $j');
    }
  }

}
