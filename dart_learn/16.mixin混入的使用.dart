void main(List<String> args) {
  final sm = SuperMan();
  sm.running();
  sm.flying();
  sm.eating();
}

// 接口implements需要将所有的方法都实现一遍, 不管原来的接口类是否实现
// mixin混入: 混入类的方法, 只要实现过的, 我都可以拿过来直接用, 比较方便
// mixin语法: 定义可混入的类的时候, 不用class定义, 需要用mixin定义, 然后通过with 进行混入
// 当混入类中的方法 和父类中的方法 以及自己的方法名称相同时 => 优先级: 自己的最高, 混入类的次之, 父类的最低
mixin Runner {
  void running() {
    print("Runner running");
  }
}

mixin Flyer {
  void flying() {
    print("Flyer flying");
  }
}

class Person {
  void eating() {
    print("Person eating");
  }

  void running() {
    print("Person running");
  }
}

class SuperMan extends Person with Runner, Flyer {
  void running() {
    print("SuperMan running");
  }
}
