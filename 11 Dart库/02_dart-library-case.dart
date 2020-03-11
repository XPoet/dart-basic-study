/**
 * 使用 Dart 内置库实现请求数据的功能
 */
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