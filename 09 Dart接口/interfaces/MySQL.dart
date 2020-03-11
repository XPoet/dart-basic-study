import './DB.dart';
class MySQL implements DB {
  @override
  String uri;

  MySQL(this.uri);

  @override
  add(String data) {
    // TODO: implement add
    print('MySQL Add $data');
  }

  @override
  save(String data) {
    // TODO: implement save
    return null;
  }

  @override
  delete(int id) {
    // TODO: implement delete
    return null;
  }

}
