/**
 * for循环
 */
void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    print('i: $i');
  }

  print('————————————————————————————————————');

  // 1、打印出0~50所有的偶数
  for (int i = 0; i <= 50; i++) {
    if (i % 2 == 0) {
      print('0~50中的偶数：$i');
    }
  }

  print('————————————————————————————————————');

  // 2、求 1+2+3+4 +...100的和
  int sum = 0;
  for (int i = 0; i <= 100; i++) {
    sum += i;
  }
  print('1~100的和: $sum');

  print('————————————————————————————————————');

  // 3、计算5的阶乘（1*2*3*4*5）
  int sum_2 = 1;
  for (int i = 1; i <= 5; i++) {
    sum_2 *= i;
  }
  print('5的阶乘: $sum_2');

  // 4、定义一个二维数组，打印出里面的内容
  List list = [
    {
      "cate": '国内',
      "news": [
        {"title": "国内新闻1"},
        {"title": "国内新闻2"},
        {"title": "国内新闻3"}
      ]
    },
    {
      "cate": '国际',
      "news": [
        {"title": "国际新闻1"},
        {"title": "国际新闻2"},
        {"title": "国际新闻3"}
      ]
    }
  ];

for (var i = 0; i < list.length; i++) {
  print(list[i]['cate']);
  print('--------');
  for (var j = 0; j < list[i]['news'].length; j++) {
    print(list[i]['news'][j]['title']);
  }
  
}
}
