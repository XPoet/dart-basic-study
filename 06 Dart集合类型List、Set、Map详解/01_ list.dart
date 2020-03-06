/**
 * 集合类型List详解
 */
void main(List<String> args) {
  /* 
    常用属性：
        length          长度
        reversed        翻转
        isEmpty         是否为空
        isNotEmpty      是否不为空
    常用方法：  
        add             增加
        addAll          拼接数组
        indexOf         查找  传入具体值
        remove          删除  传入具体值
        removeAt        删除  传入索引值
        fillRange       修改   
        insert(index,value);            指定位置插入    
        insertAll(index,list);          指定位置插入List
        toList()    其他类型转换成List  
        join()      List转换成字符串
        split()     字符串转化成List
        forEach   
        map
        where
        any
        every
   */

  List myList = ['苹果', '香蕉', '草莓', '雪梨'];

  // List属性
  print(myList);
  print(myList.length);
  print(myList.isEmpty);
  print(myList.isNotEmpty);
  print(myList.reversed); // 对列表倒序排序
  print(myList.reversed.toList());

  print('————————————————————————————————');

  // List方法

  // 增加 add addAll
  myList.add('桃子');
  print(myList);

  print('————————————————————————————————');

  myList.addAll(['葡萄', '西瓜']);
  print(myList);

  print('————————————————————————————————');

  // 查找 indexOf
  print(myList.indexOf('葡萄'));
  print(myList.indexOf('蓝莓')); // indexOf查找数据，查不到返回-1，查找返回索引值
  print('————————————————————————————————');

  // 删除 remove removeAt
  myList.remove('苹果');
  print(myList);

  myList.removeAt(2);
  print(myList);
  print('————————————————————————————————');

  // 修改 fillRange
  myList.fillRange(1, 2, 'AA');
  print(myList);
  print('————————————————————————————————');

  // 插入 insert
  myList.insert(1, 'BB');
  print(myList);

  print('—————————————— join ——————————————');
  // 连接 join
  var str = myList.join('-'); // List 转换成字符串
  print(str); // List 转换成字符串

  print('—————————————— split ——————————————');
  // 将字符串分割成数组 split
  print(str.split('-'));

  print('—————————————— for in ——————————————');
  // for in
  for (var item in myList) {
    print(item);
  }

  print('—————————————— forEach ——————————————');
  // forEach 跟 ES6 类似
  myList.forEach((item) {
    print(item);
  });

  print('—————————————— map ——————————————');
  // map
  var listMap = myList.map((item) {
    return 'N$item';
  });
  print(listMap);

  List<String> newList = listMap.toList();
  print(newList);

  print('—————————————— any ——————————————');
  // any 只要集合里面有满足条件的就返回true
  List<int> listAny = [1, 2, 3, 4, 5, 8];
  bool flagAny = listAny.any((v) {
    return v > 4; // 数组里面是否有大于4的值
  });
  print(flagAny);

  print('—————————————— where ——————————————');
  List<int> listWhere = [1, 2, 3, 4, 5, 8];
  Iterable<int> flagWhere = listWhere.where((v) {
    return v > 4; // 过滤出数组里面大于4的值
  });
  print(flagWhere);
  print(flagWhere.toList());

  print('—————————————— every ——————————————');
  // 每一个都满足条件返回true  否则返回false
  List<int> listEvery = [1, 2, 3, 4, 5, 8];
  bool flagEvery = listEvery.every((v) {
    return v > 2; // //每一个都满足条件返回true  否则返回false
  });
  print(flagEvery);
}
