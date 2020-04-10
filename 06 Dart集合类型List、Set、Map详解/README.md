## Dart集合类型：List、Set、Map详解
### List
- 常用属性：
    - length          长度
    - reversed        翻转
    - isEmpty         是否为空
    - isNotEmpty      是否不为空
- 常用方法：  
    - add             增加
    - addAll          拼接数组
    - indexOf         查找  传入具体值
    - remove          删除  传入具体值
    - removeAt        删除  传入索引值
    - fillRange       修改   
    - insert(index,value);        指定位置插入    
    - insertAll(index,list);      指定位置插入List
    - toList()    其他类型转换成List  
    - join()      List转换成字符串
    - split()     字符串转化成List
    - forEach   
    - map
    - where
    - any
    - every

```dart
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
```

### Set
 * Set是没有顺序且不能重复的集合，所以不能通过索引去获取值
 * 常用的功能就是去除数组重复内容
 ```dart
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
 ```

 ### Map
- Map（字典）是无序的键值对
- 常用属性：
  - keys            获取所有的key值
  - values          获取所有的value值
  - isEmpty         是否为空
  - isNotEmpty      是否不为空
- 常用方法:
  - remove(key)     删除指定key的数据
  - addAll({...})   合并映射  给映射内增加属性
  - containsValue   查看映射内的值  返回true/false
  - forEach   
  - map
  - where
  - any
  - every

```dart
  Map person = {"name": "张三", "age": 18};
  print('person: $person');

  Map p = new Map();
  p["name"] = "李四";
  p["age"] = 19;
  p["sex"] = "男";
  print('p: $p');

  // 常用属性
  print(p.keys);
  print(p.keys.toList());
  print(p.values.toList());
  print(p.isEmpty);
  print(p.isNotEmpty);

  print('————————————————————————————');

  // 常用方法
  // 增加 add addAll
  p.addAll({'job': "写代码", 'tel': 110});
  print(p);
  print('————————————————————————————');

  // 删除 remove
  p.remove("sex");
  print(p);

  print('————————————— containsValue —————————————');
  // 是否包含值
  print('是否“包含写代码”：${p.containsValue('写代码')}');

  print('————————————— forEach —————————————');
  p.forEach((key, value){
    print('key: ${key} - value: $value');
  });
```

[下一章：07 Dart函数](../07%20Dart函数)
