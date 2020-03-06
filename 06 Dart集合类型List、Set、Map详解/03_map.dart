/**
 * Map（字典）是无序的键值对：
 */
void main(List<String> args) {
  /* 
    常用属性：
        keys            获取所有的key值
        values          获取所有的value值
        isEmpty         是否为空
        isNotEmpty      是否不为空
    常用方法:
        remove(key)     删除指定key的数据
        addAll({...})   合并映射  给映射内增加属性
        containsValue   查看映射内的值  返回true/false
        forEach   
        map
        where
        any
        every
   */

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


  
}
