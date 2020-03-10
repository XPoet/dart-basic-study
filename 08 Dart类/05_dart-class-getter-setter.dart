/**
 * Dart 类的 getter setter
 */
class Rect {
  num height;
  num width;

  Rect(this.height, this.width);

  getArea() {
    return this.height * this.width;
  }

  // getter
  // 获取矩形周长
  get perimeter {
    return this.height * 2 + this.width * 2;
  }

  // setter
  // 设置矩形高度
  set rectHeight(num height) {
    this.height = height;
  }
}

void main(List<String> args) {
  Rect r = new Rect(10, 20);
  print('矩形面积：${r.getArea()}');

  print('————————————————————');

  print('矩形周长：${r.perimeter}');  // getter用法

  // 设置矩形的高度
  r.rectHeight = 6;  // setter用法
  print('重新设置过高度之后的矩形周长：${r.perimeter}');  




}
