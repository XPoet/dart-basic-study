/**
 * Dart类的初始化
 */
class Rect {
  int height;
  int width;

  // 类的属性初始化写法
  Rect(): height = 2, width = 3 {
    print('height初始化的值：$height, height初始化的值：$width');
  }

  getArea() {
    return this.height * this.width;
  }
  
}

void main(List<String> args) {

  Rect r  = new Rect();
  print(r.getArea());
  
}