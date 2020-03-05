/**
 * 条件表达式
 * 1、 if else switch case
 * 2、 三目运算符  ? : 
 * 3、 ??运算符
 */
void main(List<String> args) {
  // if else switch case
  bool flag = true;

  if (flag) {
    print('flag == true');
  } else {
    print('flag == false');
  }

  // 判断一个人的成绩：如果大于等于60 显示及格，如果大于70 显示良好，如果大于90 显示优秀
  int score = 61;
  if (score > 90) {
    print('优秀！');
  } else if (score > 70) {
    print('良好！');
  } else if (score >= 60) {
    print('及格！');
  } else {
    print('不及格！');
  }

  // switch case
  String sex = '女';
  switch (sex) {
    case '男':
      print('性别：男');
      break;
    case '女':
      print('性别：女');
      break;
    default:
      print('性别：人妖');
  }

  // 三目运算符
  bool f = false;
  print(f ? '我是true' : '我是false');

  // ?? 运算符
  int n1;
  // int n1 = 20;
  int n2 = n1 ?? 10;  // 如果n1为空，则将10赋值给n2，否则将n1的值赋值给n2
  print('n2的值是：$n2');
}
