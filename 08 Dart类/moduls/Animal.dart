class Animal {
  String _name; // 私有属性（加下划线，表示私有）
  int age;
  Animal(this._name, this.age);

  void printInfo() {
    print("动物名：${this._name}，动物年龄：${this.age}");
  }

  String getName() {
    return this._name;
  }

  // 私有方法（加下划线，表示私有）
  void _run() {
    print('这是一个私有方法');
  }

  execRun() {
    this._run(); // 类里面方法的相互调用
  }
}
