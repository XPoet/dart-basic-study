/**
 * Dart 中的 pub 包管理系统
 * 使用步骤：
 *  1、从下面网址找到要用的库
 *    https://pub.dev/packages
 *    https://pub.flutter-io.cn/packages
 *    https://pub.dartlang.org/flutter/
 * 
 *  2、创建一个 pubspec.yaml 文件，内容如下
 *    name: project name
 *    description: a new dart project.
 *    dependencies:  
 *        http: ^0.12.0+2
 *        date_format: ^1.0.6
 * 
 *  3、配置 dependencies
 * 
 *  4、运行命令 pub get 获取远程库
 * 
 *  5、看文档引入库使用
 */
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:date_format/date_format.dart';

void main(List<String> args) async {
  var url =
      "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1";

  // Await the http get response, then decode the json-formatted responce.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    print(jsonResponse);
  } else {
    print("Request failed with status: ${response.statusCode}.");
  }

  print('———————————————————————————————————————————————');
  print(formatDate(DateTime(2020, 3, 11), [yyyy, '*', mm, '*', dd]));
}
