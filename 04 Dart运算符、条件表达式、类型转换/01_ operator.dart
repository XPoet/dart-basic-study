/**
 * Dart运算符
 * 
 * 算术运算符：+    -    *    /     ~/ (取整)     %（取余）
 * 
 * 关系运算符：==    ！=   >    <    >=    <=
 * 
 * 逻辑运算符：!  &&   ||
 * 
 * 赋值运算符：
 *    基础赋值运算符   =   ??=
 *    复合赋值运算符   +=  -=  *=   /=   %=  ~/=
 */
void main(List<String> args) {
  int a = 2;
  int b = 5;

  /* 算术运算符 */
  print(a + b); // 加
  print(a - b); // 减
  print(a * b); // 乘
  print(a / b); // 除
  print(a % b); // 取余
  print(a ~/ b); // 取整

  print('==========================');

  /* 关系运算符 */
  print(a == b); // 判断是否相等
  print(a != b); // 判断是否不等
  print(a > b); // 判断是否大于
  print(a < b); // 判断是否小于
  print(a >= b); // 判断是否大于等于
  print(a <= b); // 判断是否小于等于

  print('==========================');

  /* 逻辑运算符 */
  // ! 取反
  // && 且 （全部为true的话值为true，否则值为false）
  // || 或 （全为false的话值为false，否则值为true）
  bool flag_1 = true;
  bool flag_2 = false;
  print(!flag_1);
  print(flag_1 && flag_2);
  print(flag_1 || flag_2);

  print('==========================');

  /* 赋值运算符 */
  // 基础赋值运算符   =   ??=
  int num_1 = 10;
  int num_2 = 11;
  int num_3;
  num_3 ??= 12; // 表示如果 num_3 为空的话把 12 赋值给 num_3

  // 复合赋值运算符   +=  -=  *=   /=   %=  ~/=
  int num_4 = 2;
  num_4 *= 2; // num_4 = num_4 * 2;

}
