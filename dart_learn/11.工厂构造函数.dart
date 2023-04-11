void main(List<String> args) {
  // 需求是, Person 有两个属性, 名字和肤色,
  // 要求初始化时, 传入相同的名字, 返回的是同一对象
  // 要求初始化时, 传入相同的肤色, 返回的是同一对象

  // 1. 方案一: 使用常量构造函数
  // 1.1 一起构造两个属性
  // 这种情况必须当名字和颜色完全相同时, 才能够保证书输出统一对象.
  const p1 = Person1("zhangsan", "white");
  const p2 = Person1("zhangsan", "white");
  print(identical(p1, p2)); // true

  // 1.2 单独构造两个属性 : Persona2 不能够满足条件

  // 2. 工厂构造函数
  final p3 = Person4.withName("zhangsan");
  final p4 = Person4.withName("zhangsan");
  print(identical(p3, p4)); // true

  final p5 = Person4.withColor("red");
  final p6 = Person4.withColor("red");
  print(identical(p5, p6)); // true

  // 3. p3, p4, p5, p6 也可以用var 修饰, 这里使用final, 就是一种语法习惯
  // 类似于Swift的let/var, 一般都用let, 这里也是一样, 用final修饰, 一下就知道后续不可变了, 比较安全.
}

class Person1 {
  final String name;
  final String color;
  const Person1(this.name, this.color);
}

class Person2 {
  final String name;
  final String color = "white";
  const Person2(this.name);
  // 错误:  常量构造函数, 不能够有多个构造函数, 所以不能满足输入同一颜色返回同一对象的操作
  // const Person2(this.color);
}

// 普通的构造函数: 会自动返回创建出来的对象, 不能手动返回
class Person3 {
  String name;
  Person3(this.name) {
    // return this; // 系统默认帮助实现了
  }
}

// 工厂构造函数最大的特点: 可以手动, 且必须返回一个对象
// 看似多占用内存, 但是减少了对象创建和销毁的过程
// 如果外面初始化对象过多, 不使用工厂模式, 也是多占内存, 反过来看工厂模式整体来看还是为了节省内存的
class Person4 {
  String name;
  String color;

  // 使用关键字 static 可以声明类变量或类方法。
  static final Map<String, Person4> _nameCache = {};
  static final Map<String, Person4> _colorCache = {};

  factory Person4.withName(String name) {
    if (_nameCache.containsKey(name)) {
      return _nameCache[name]!;
    } else {
      final p = Person4(name, "default");
      _nameCache[name] = p;
      return p;
    }
  }

  factory Person4.withColor(String color) {
    if (_colorCache.containsKey(color)) {
      return _colorCache[color]!;
    } else {
      final p = Person4("default", color);
      _colorCache[color] = p;
      return p;
    }
  }

  // 自定义初始化构造函数, 因为当自定义了withName/withColor 后, 系统就会默认不生成Person4()的构造方法, 这里需要自定义初始化构造方法
  Person4(this.name, this.color);
}
