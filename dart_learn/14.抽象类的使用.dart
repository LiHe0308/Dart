void main(List<String> args) {
  // 2. 验证抽象类不能被实例化
  // final shape = Shape(); // 报错: Abstract classes can't be instantiated.

  // 2.1 Map、List 都是抽象类, 但是都能实例化, 为什么???
  // abstract class Map<K, V>
  final map = Map(); // 不报错
  print(map.runtimeType); // _InternalLinkedHashMap<dynamic, dynamic>

  // 2.2 Map的工厂函数声明
  // external 标识符: 代表我这里只做一个实例化方法(Map())的声明, 具体实现都在dart的源码里面
  // external 作用: 将方法的实现和方法的声明分离.
  // external factory Map();

  // 2.3 Map的工厂函数实现
  // 通过@patch 修饰后, 来继续实现实例化方法(Map()), 这么做的好处就是可以在runtime过程中, 动态获取运行平台, 使用不同的实现方式来实现
  // @patch 作用: 关联某个类中用external 修饰的方法的实现.
  // 路径为: flutter/bin/cache/dart-sdk/lib/_internal/vm/lib/map_patch.dart
  // @patch
  // factory Map() => new LinkedHashMap<K, V>();  // 也就和2.1打印的Map类型匹配上了

  // 2.4 自定义的抽象类怎么才能实例化呢???
  // 采用工厂(factory)构造函数, 实例化一个抽象类的implements接口实现
  final shape = Shape();
  print(shape.runtimeType); // triangle
}

// 抽象类 用abstract 修饰
// 1. 定义一个 形状 抽象类
// 注意二: 抽象类不能实例化
abstract class Shape {
  // 1.1 可以只声明方法, 不实现方法, 但是子类必须实现
  double getArea();

  // 1.2 也可以声明方法, 并且实现它, 子类可以不实现
  String getInfo() {
    return "形状";
  }

  // 开启工厂模式, 子类就不能使用extends 继承了, 只能通过implements 来进行多实现
  factory Shape() {
    return triangle();
  }
}

// 注意一: 继承自抽象类后, 必须实现抽象类的抽象方法
// class Rectangle extends Shape {
//   @override
//   double getArea() {
//     return 100.00;
//   }
// }

// 配合2.4 完成抽象类的实例化
// 这里必须注释掉 Rectangle类, 因为:
// 在抽象类中定义了工厂构造方法后，在子类中不能定义除工厂构造方法外的其它构造方法了，所以只能使用 implements ，不能使用 extends。
class triangle implements Shape {
  @override
  double getArea() {
    // TODO: implement getArea
    return 18.8;
  }

  @override
  String getInfo() {
    // TODO: implement getInfo
    return "三角形";
  }
}
