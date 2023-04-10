void main(List<String> args) {
  var p = Person();
  print(p); // Instance of 'Person'

  // var p1 = Person1(); // 当自定义了初始化方法, 原有的系统提供的初始化方法就失效了, 所以报错.
  var p1 = Person1("lilei");
  print(p1); // Instance of 'Person1'

  var p2 = Person2("张三", 18);
  print(p2); // Instance of 'Person2'

  var p3 = Person3("lisi", 18, height: 1.88);
  print(p3); // Instance of 'Person3'

  var p41 = Person4("p41", 41);
  var p42 = Person4.createForNameAgeHeight("p42", 42, 1.88);
  var p43 = Person4.formMap({"name": "p43", "age": 43, "height": 1.88});
  print(p41); // Instance of 'Person4'
  print(p42); // Instance of 'Person4'
  print(p43); // Instance of 'Person4'

  var p5 = Person5.formMap({"name": "张三", "age": 12, "height": 1.88});
  print(p5); // my name is 张三, age is 12, height is 1.88

  // 4. 知识点 Object 和dynamic 的区别
  // 任何对象都继承自Object
  // Object方法调用时, 不明确具体类型, 调用没有的方法, 编译时会报错
  Object obj = "abc";
  // print(obj.substring(1)); // The method 'substring' isn't defined for the type 'Object'. 这里就会报错, 因为obj并没有明确类型, 也就是Object没有substring方法, 所以报错.

  // dynamic代表明确的声明, 是个类型; 而var 是类型推导!
  dynamic obj2 = "abc";
  print(obj2.substring(1)); // bc

  // dynamic代表任意类型, 编译的时候不报错, 但是运行时存在安全隐患
  dynamic obj3 = 123;
  print(obj3.substring(1)); // Class 'int' has no instance method 'substring'. 由于dynamic代表任意类型, 所以能够调用String的substring方法, 可是运行时发现obj3为int类型, 不存在该方法, 所以崩溃.

}

class Person {}

class Person1 {
  String? name;

  Person1(String name) {
    this.name = name;
  }
}

// 1. 自定义初始化的语法糖, 相当于将传递进来的name和age赋值给自己的成员变量
class Person2 {
  String? name;
  int? age;
  Person2(this.name, this.age);
}

// 2. 当Person2 初始化方式用了一段时间后, 产品提出需要新增height字段
// 2.1 添加可选的命名参数, 避免带来歧义
class Person3 {
  String? name;
  int? age;
  double? height;
  Person3(this.name, this.age, {this.height});
}

// 或者
// 2.2 命名构造函数
class Person4 {
  String? name;
  int? age;
  double? height;

  Person4(this.name, this.age);
  Person4.createForNameAgeHeight(this.name, this.age, this.height);
  Person4.formMap(Map<String, dynamic> map) {
    this.name = map["name"];
    this.age = map["age"];
    this.height = map["height"];
  }
}

// 3. print函数打印对象时, 通过重写toString方法, 直接打印属性
class Person5 {
  String? name;
  int? age;
  double? height;
  Person5.formMap(Map<String, dynamic> map) {
    this.name = map["name"];
    this.age = map["age"];
    this.height = map["height"];
  }

  @override
  String toString() {
    // TODO: implement toString
    return "my name is $name, age is $age, height is $height";
  }
}
