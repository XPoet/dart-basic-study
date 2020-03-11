## Dart 库

### Dart 库的使用介绍

前面讲解 Dart 基础知识的时候大多数是在一个文件里面编写 Dart 代码的，但实际开发中不可能这么写，模块化很重要，这就需要使用到**库**的概念。

- 在 Dart 中，库的使用时通过 import 关键字引入的。
- library 指令可以创建一个库，每个 Dart 文件都是一个库，即使没有使用 library 指令来指定。
- Dart 中的库主要有三种：

  - 1、我们自定义的库  
    `import 'lib/xxx.dart';`

  - 2、系统内置库  
    `import 'dart:math';`  
    `import 'dart:io';`  
    `import 'dart:convert';`

  - 3、Pub 包管理系统中的库  
    `https://pub.dev/packages`  
    `https://pub.flutter-io.cn/packages`  
    `https://pub.dartlang.org/flutter/`

        使用第三方库的方法：

    - 1、需要在自己项目根目录新建一个 pubspec.yaml
    - 2、在 pubspec.yaml 文件 然后配置名称 、描述、依赖等信息
    - 3、然后运行 pub get 获取包下载到本地
    - 4、项目中引入库，例如：`import 'package:http/http.dart' as http;`
    - 5、查看第三方库的官方文档使用。

```dart
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

  // 冲突解决，取别名
  l2.Animal animal2 = new l2.Animal('dog', 5);
  animal2.printInfo();

  print('——————————————————————————————————');

  // 使用导入的内置的库的方法
  print('min: ${min(1, 11)}');
  print('max: ${max(1, 11)}');
}
```

**案例：使用 Dart 内置库实现请求数据的功能**

```dart
import 'dart:io';
import 'dart:convert';

// API接口：http://news-at.zhihu.com/api/3/stories/latest
getDataFromZhihuAPI() async {
  // 1、创建 HttpClient 对象
  HttpClient httpClient = new HttpClient();

  // 2、创建 URI 对象
  Uri uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');

  // 3、发起请求，等待请求
  var request = await httpClient.getUrl(uri);

  // 4、关闭请求，等待响应
  var response = await request.close();

  // 5、解码响应的内容
  return await response.transform(utf8.decoder).join();
}

void main(List<String> args) async {
  var result = await getDataFromZhihuAPI();
  print(result);
}
```

### Dart 中的 async 和 await

- 1、只有 async 方法才能使用 await 关键字调用方法
- 2、如果调用别的 async 方法必须使用 await 关键字
- 3、async 是让方法变成异步
- 4、await 是等待异步方法执行完成

```dart
void main(List<String> args) async {
 var result = await asyncTest();
 print('result: $result');
}

// 异步方法
asyncTest() async {
 return 'hello async';
}
```

### Dart 中的 pub 包管理系统

通过 Dart 中的 pub 包管理系统来使用第三方库，步骤：

- 1、从下面网址找到要用的库
  - https://pub.dev/packages
  - https://pub.flutter-io.cn/packages
  - https://pub.dartlang.org/flutter/
- 2、创建一个 pubspec.yaml 文件，内容如下
  ```
  name: projectName
  description: a new dart project.
  dependencies:
      http: ^0.12.0+2
      date_format: ^1.0.6
  ```
- 3、配置 dependencies
- 4、运行命令 pub get 获取远程库
- 5、看文档引入库使用

```dart
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:date_format/date_format.dart';

void main(List<String> args) async {
  var response = await http.get("http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1");
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    print(jsonResponse);
  } else {
    print("Request failed with status: ${response.statusCode}.");
  }

  print('———————————————————————————————————————————————');
  print(formatDate(DateTime(2020, 3, 11), [yyyy, '*', mm, '*', dd]));
}
```

### Dart 库的部分导入

如果只需要导入库的一部分，有两种模式：

- 1、只导入需要的部分，使用 show 关键字，如下例子所示：  
  `import 'library/Animal.dart' show Animal;`

- 2、隐藏不需要的部分，使用 hide 关键字，如下例子所示：
  `import 'library/Animal.dart' hide Animal;`

```dart
import 'library/Animal.dart' show Animal;

void main(List<String> args) {
  Animal animal = new Animal('鸭子', 1);
  animal.printInfo();
}
```

### Dart 延迟加载（懒加载）

- Dart 延迟加载（懒加载），即在需要的时候再进行加载。
- 懒加载的最大好处是可以减少 APP 的启动时间
- 懒加载使用 deferred as 关键字来指定
- 当需要使用的时候，需要使用 loadLibrary() 方法来加载

```dart
import 'library/Animal.dart' deferred as A;
import 'package:date_format/date_format.dart' deferred as F;

void main(List<String> args) async {
  await A.loadLibrary();
  await F.loadLibrary();

  var a = new A.Animal('兔纸', 9);
  a.printInfo();

  print('——————————————————————————————————————————');

  print(F.formatDate(DateTime(2020, 02, 02), [F.yyyy, '*', F.mm, '*', F.dd]));
}
```
