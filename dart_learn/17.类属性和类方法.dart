void main(List<String> args) {
  final p = Person();

  p.name = "张三";

  Person.day = "今天";

  p.eating();

  Person.running();

  // 2. 枚举
  final color = Colors.red;

  switch (color) {
    case Colors.red:
      print("红色");
      break;
    case Colors.green:
      print("绿色");
      break;
    case Colors.blue:
      print("蓝色");
      break;
    default:
  }

  // 2.1 获取枚举定义的所有值 => list
  print(Colors.values);      // [Colors.red, Colors.green, Colors.blue]
  // 2.2 获取枚举值所在枚举中的index
  print(Colors.blue.index);  // 2
}

class Person {
  // 1.1 成员变量
  String? name;

  // 1.2 静态属性(类属性)
  static String? day;

  // 1.3 对象方法
  void eating() {
    print("eating");
  }

  // 1.4 静态方法(类方法)
  static void running() {
    print("running");
  }
}

// 枚举的定义
enum Colors { red, green, blue }
