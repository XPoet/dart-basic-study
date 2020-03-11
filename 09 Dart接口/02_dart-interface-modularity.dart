/**
 * Dart接口模块化
 * 将不同的接口抽离成单个文件，需要时导入
 */


import './interfaces/MySQL.dart';

void main(List<String> args) {

  MySQL mySQL = new MySQL('https://github.com/XPoet');

  mySQL.uri = 'i@xpoet.cn';

  mySQL.add('new data');
}