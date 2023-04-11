void main(List<String> args) {}

class Animal {
  int age;

  Animal(this.age);

  void eat() {

  }
}

// extends 就表示继承自谁
class Dog extends Animal {
  String name;
  // 为super传入age 完成初始化
  // : super(age) 就是在初始化列表里面调用的super
  Dog(this.name, int age) : super(age);

  // @override 重写一个方法, 需要使用@override关键词
  @override
  void eat() {
    // TODO: implement eat
    super.eat();
  }
}

// extends在泛型里面还被用作类型限制
// 一种常见的非空类型处理方式，是将子类限制继承 Object （而不是默认的 Object?）。 (provided: 提供, 供给)
class Foo<T extends Object> {
  // Any type provided to Foo for T must be non-nullable.
}