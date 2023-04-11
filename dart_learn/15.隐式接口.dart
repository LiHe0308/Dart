void main(List<String> args) {}

// Dart中没有关键字来定义接口的
// 其他语言比如用interface/protocol 来定义接口
// Dart 默认情况下所有的类都是隐式接口
// Dart 只支持单继承, 所以SuperMan 想会跑, 又想会飞, 就不能通过继承

class Runner {
  void running() {
    print("running");
  }
}

class Flyer {
  void flying() {
    print("flying");
  }
}

class Person {
  void eating() {}
}

// 当一个类当做接口使用时, 那么实现这个接口的类, 必须实现这个接口中的所有方法
// 当Runner 和 Flyer 当做接口时, 实现接口的类就是 SuperMan, 标识就是implements 关键字, 所以SuperMan 要实现Runner 和Flyer 的所有方法
// 只可以单继承extends Person;  可以多接口, 用逗号隔开
// 继承(extends)才可以调用super, 比如eating; 接口(implements)不可以, 比如running , flying.
// 当Person 也存在running 的时候, SuperMan里面可以不实现, 因为继承自person, 就证明已经有了, 不需要再实现一次了.
class SuperMan extends Person implements Runner, Flyer {
  @override
  void eating() {
    // TODO: implement eating
    super.eating();
  }

  @override
  void running() {
    // TODO: implement running
  }

  @override
  void flying() {
    // TODO: implement flying
  }
}
