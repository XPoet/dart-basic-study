/**
 * Dart箭头函数、函数的互相调用
 */
void main(List<String> args) {
  
  List<String> myList1 = ['苹果', '香蕉', '西瓜'];

  // 使用 forEach 打印出 myList 里面的数据
  myList1.forEach((value) {
    print(value);
  });

  print('——————————————————————————————————————————————');

  // 箭头函数，用法1
  myList1.forEach((value) => print(value));

  // 箭头函数，用法2
  myList1.forEach((value) => {
        print(value) // 只能有一行代码，不能加分号！
      });

  print('——————————————————————————————————————————————');

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

  print('——————————————————————————————————————————————');

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
}
