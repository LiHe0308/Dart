void main(List<String> args) {
  // 1. bool 类型没有非零即真
  //  1.1 错误写法
  // var flag = "";
  // if (flag) { // Conditions must have a static type of 'bool'. 条件语句必须是一个bool类型
  //   print("do something");
  // }

  // 1.2 正确写法
  var flag = true;
  if (flag) {
    print("执行代码");
  }

  // 2. 基本类型int, double
  // int 和 double 都是 num 的子类。 double即可以是整型, 也可以是浮点型, 而int只能是整型

  // 3. 字符串类型
  // 3.1 定义字符串
  var str1 = 'abc'; // 单引号
  var str2 = "abc"; // 双引号
  var str3 = """
  你好
  我好
  大家好
  """; // 三引号, 带有排版格式的字符串
  print(str3);

  var str4 = '使用单引号创建字符串时可以使用\'斜杠\'来转义那些与单引号冲突的字符串';
  print(str4);

  // 3.2 字符串和表达式进行拼接
  var name = "tom";
  var age = 19;
  var height = 1.88;

  var message1 = "my name is ${name}, age is ${age}, height is ${height}";
  var message2 =
      "name is ${name}, type is ${name.runtimeType}"; // runtimeType获取name类型, 可以使用 Object 对象的 runtimeType 属性在运行时获取一个对象的类型，该对象类型是 Type 的实例。
  print(message1);
  print(message2);
  // 当${}里面为单纯的变量时, 花括弧可以省略
  var message3 = "my name is $name, age is $age, height is $height";
  print(message3);
  // 当${}里面为表达式时, 花括弧不可以省略
  var message4 = "name is $name, type is $name.runtimeType";
  print(
      message4); // name is tom, type is tom.runtimeType, 所以message4 中的name.runtimeType 的花括弧不能省略

  var message5 = "name is $name, height is ${height + 9.66}";
  print(message5); // name is tom, height is 11.54, 花括弧不能省略

  var message6 = name + "$age" + "$height";
  print(message6);

}
