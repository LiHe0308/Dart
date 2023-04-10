void main(List<String> args) {
  // 1. 初始化p的时候,想给age一个默认值
  var p1 = Person("张三");
  print(p1.age); // null

  // 2. 初始化p的时候,想给age一个默认值
  var p2 = Person("张三");
  print(p2.age); // 10
  p2.age = 20;
  print(p2.age); // 20

  // 3. 初始化p的时候,想给age一个默认值 => 构造函数重定向 : 一个初始化函数调用另一个初始化函数
  var p3 = Person("lisi");
  print(p3.age); // 15
}

class Person {
  String? name;
  int? age;

  // 1.1 初始化p的时候,age没有默认值
  // Person(this.name);

  // 2.1 初始化p的时候,想给age一个默认值
  // Person(this.name) : age = 10;

  // 3.1 构造函数重定向 (internal: 内部的)
  Person(String name) : this._internal(name, 15);

  Person._internal(this.name, this.age);
}
