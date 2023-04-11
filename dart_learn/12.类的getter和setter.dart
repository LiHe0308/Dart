void main(List<String> args) {
  final p = Person();
  // 1. 直接访问属性
  print(p.name);

  // 2. 通过setter/getterfang访问
  p.setName = "lilei";
  print(p.getName); // lilei

  p.setHeight = 2.88;
  print(p.getHeight); // 2.88
}

// 实例对象的每一个属性都有一个隐式的 Getter 方法，
// 如果为非 final 属性的话还会有一个 Setter 方法，你可以使用 get 和 set 关键字为额外的属性添加 Getter 和 Setter 方法：
class Person {
  String? name;
  double height = 1.88;

  // setter 语法糖
  set setName(String name) {
    this.name = name;
  }

  // getter 语法糖
  String get getName {
    return this.name ?? "default";
  }

  // setter/getter 也可以这么写
  double get getHeight => this.height;
  set setHeight(double height) => this.height = height;
}

// 再或者, 都是一个意思 (Rectangle: 长方形, 矩形)

class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}
