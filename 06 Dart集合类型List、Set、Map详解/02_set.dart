/**
 * Set 
 * 用它最主要的功能就是去除数组重复内容
 * Set是没有顺序且不能重复的集合，所以不能通过索引去获取值
 */
void main(List<String> args) {
  Set mySet = new Set();
  mySet.add('苹果');
  mySet.add('香蕉');
  mySet.add('菠萝');
  mySet.add('香蕉');

  print(mySet); // {苹果, 香蕉, 菠萝}

  // 依次打印出Set的值
  mySet.forEach((item) => print(item));

  print('———————————— 实现数组去重的方法 ————————————');
  // 实现数组去重的方法
  List<String> myList = ['苹果', '苹果', '苹果', '草莓', '草莓', '草莓', '桃子'];
  print(myList);
  Set s = new Set();
  s.addAll(myList);
  print(s);
  print(s.toList());
}
