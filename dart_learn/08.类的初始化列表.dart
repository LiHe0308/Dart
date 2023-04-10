import '07.类的定义.dart';

void main(List<String> args) {
  var p = Person("张三", 18);

  var p1 = Person1("lisi", age: 18);
  print(p1);

  var p6 = Person66("李四", age: 22);
  print(p6);
}

class Person {
  String name;
  int age;

  // ❌会报错: Non-nullable instance field 'age/name' must be initialized. 
  // 代表在初始化Person类之前, 要对两个属性进行初始化
  // 初始化完成, 在 第15行 的时候, 进入函数体之前, person类就初始化结束了, 所以报错了.
  // Person(String name, int age)
  // {
  //   this.name = name;
  //   this.age = age;
  // }

  // 可修改成 (语法糖, 初始化传入参数即赋值)
  Person(this.name, this.age);
}

class Person1 {
  final String name;
  final int age;

  // Person1(this.name) // All final variables must be initialized, but 'age' isn't.

  // Person1(this.name): this.age = 10; // 不管外面设置不设置age, age都为10

  // 外界传, age为外界入参
  // 外界不传, age为默认值
  // Person1(this.name, {int age}): this.age = age ?? 10; // 报错: The parameter 'age' can't have a value of 'null' because of its type, but the implicit default value is 'null'.
  // : this.age = age ?? 10   是一个语句, 被叫做初始化列表.
  Person1(this.name, {int? age}): this.age = age ?? 10;   // 正确用法.

  @override
  String toString() {
    // TODO: implement toString
    return "$name $age";
  }
}

class Person2 {
  final String name;
  final int age;

  // 完全等价于Person1 的初始化列表的方式
  // 但是Person2 具有局限性, 命名可选参数只能是一个赋值操作, 且是一个确定值, 不能是语句
  // 初始化列表中可以添加很多语句
  Person2(this.name, {this.age = 10});
}

class Person66 {
  final String name;
  final int age;
  final double height;

  Person66(this.name, {int? age, double? height}): this.age = age ?? 10, this.height = height ?? 1.88;

  @override
  String toString() {
    return "我的名字是$name, 年龄是$age, 身高$height米";
  }
}