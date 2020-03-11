/**
 * Dart库
 */
/* 
  前面讲解 Dart 基础知识的时候都是在一个文件里面编写Dart代码的，但实际开发中不可能这么写，模块化很重要，这就需要使用到库的概念。
  在 Dart 中，库的使用时通过 import 关键字引入的。
  library 指令可以创建一个库，每个 Dart 文件都是一个库，即使没有使用 library 指令来指定。
  Dart中的库主要有三种：
    1、我们自定义的库     
          import 'lib/xxx.dart';

    2、系统内置库       
          import 'dart:math';    
          import 'dart:io'; 
          import 'dart:convert';

    3、Pub包管理系统中的库  
        https://pub.dev/packages
        https://pub.flutter-io.cn/packages
        https://pub.dartlang.org/flutter/

        使用第三方库的方法：
        1、需要在自己项目根目录新建一个pubspec.yaml
        2、在pubspec.yaml文件 然后配置名称 、描述、依赖等信息
        3、然后运行 pub get 获取包下载到本地  
        4、项目中引入库 import 'package:http/http.dart' as http; 看文档使用。
 */

// 导入自己的库
import 'library/Animal.dart';

// 导入内置的库
import 'dart:math';

// 冲突解决
// 当引入两个库中有相同名称标识符的时候，如果是java通常我们通过写上完整的包名路径来指定使用的具体标识符，甚至不用import都可以。
// 但是Dart里面是必须import的。当冲突的时候，可以使用as关键字来指定库的前缀。
// 如下例子所示：
import 'library2/Animal.dart' as l2;


void main(List<String> args) {

  // 使用导入的自己的库
  Animal animal = new Animal('pig', 2);
  animal.printInfo();

  l2.Animal animal2 = new l2.Animal('dog', 5);
  animal2.printInfo();

  print('——————————————————————————————————');

  // 使用导入的内置库
  print('min: ${min(1, 11)}');
  print('max: ${max(1, 11)}');

}
