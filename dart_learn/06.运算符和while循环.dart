void main(List<String> args) {
  // 1. ??=
  // 当原来的变量有值时, 那么??=不执行
  // 当原来的变量为null时, 那么就将值赋值给这个变量
  // 主要是操作当前变量!!
  // var name = "tom";
  // name ??= "json";
  // print(name); // tom

  // var name = null;
  // name ??= "json";
  // print(name); // json

  // 2. ??
  // ?? 前面的数据有值, 那么就使用?? 前面的数据
  // ?? 前面的数据为null, 那么就是用?? 后面的数据
  // 主要是为其他数据赋值时的对前面参数的非空判断
  // 可以类比为三目运算符: var temp = name == null ? "lilei" : name;
  // var name = "tom";
  // var temp = name ?? "lilei";
  // print(temp); // tom

  var name = null;
  var temp = name ?? "lilei";
  print(temp); // lilei

  // 3. 级联运算符 (可以让你在同一个对象上连续调用多个对象的变量或方法。)
  var p = Person()
    ..name = "zhangsan"
    ..eat()
    ..run();
  // 等价于
  var p1 = Person();
  p1.name = "lisi";
  p1.eat();
  p1.run();


  // 4. 自增运算符
  var a = 10;
  var b = a++; 
  print("b is $b ; a is $a"); // b is 10 ; a is 11, 自增在后, 先赋值, 再自增 => b = 10. a = 11;
  var c = ++a;
  print("c is $c ; a is $a"); // c is 12 ; a is 12, 自增在前, 先自增, 再赋值 => a = 12. c = 12;


  // 5. as、is、is! 运算符是在运行时判断对象类型的运算符。
  // as 类型转换（也用作指定 类前缀)）
  // is  如果对象是指定类型则返回 true
  // is! 如果对象是指定类型则返回 false
  var type1 = 123456;
  var type2 = "123456";
  print(type2 as String);
  print(type1 is String);
  print(type1 is int);
  print(type1 is! String);

  // 6. while循环 是先判断再循环
  var flag = 5;
  while (flag > 0) {
    flag--;
    print(flag);
  }

  
  // 7. do while是先循环再判断
  do {
    flag--;
    print(flag);
  } while (flag > -5);

  // continue;跳过当前循环, 后面循环继续
  // break; 结束当前循环
}

class Person {
  String? name;

  void eat() {
    print("eating");
  }

  void run() {
    print("running");
  }
}
