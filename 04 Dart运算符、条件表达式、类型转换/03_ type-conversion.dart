/**
 * 类型转换

 */
void main(List<String> args) {
  /**
   * 1、Number与String类型之间的转换
   *  Number类型转换成String类型 toString()
   *  String类型转成Number类型  int.parse()
   */

  String str_1 = '123';
  print(int.parse(str_1) is int);

  print('————————————————————————————');

  String str_2 = '123.1';
  String str_3 = '123';
  print(double.parse(str_2) is double);
  print(double.parse(str_3) is double);

  print('————————————————————————————');
  try {
    String str_4 = '';
    print(double.parse(str_4) is double); // 报错
  } catch (e) {
    print(e);
  }

  print('————————————————————————————');

  int num_1 = 12;
  print(num_1.toString() is String);

  /**
   * 其他类型转换为boolean类型
   * isEmpty 判断字符串是否为空
   */

  print('————————————————————————————');
  print('————————————————————————————');

  var str_5 = '';
  if (str_5.isEmpty) {
    print('str_5为空');
  } else {
    print('str_5不为空');
  }

  var myNum;
  if (myNum == null) {
    print('空！');
  } else {
    print('非空！');
  }

  var myNum_2;
  if (myNum_2 == 0) {
    print('0！');
  } else {
    print('非0！');
  }

  var myNum_3 = 0/0;
  print('myNum_3: $myNum_3');
  if(myNum_3.isNaN) {
    print('myNum_3 is NaN');

  }
}
