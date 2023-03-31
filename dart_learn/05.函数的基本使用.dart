void main(List<String> args) {
  print(sum(1, 2));
  print(sum2(2, 2));

  sayHello1("张三");

  sayHello2("张三", 10, 1.88);

  sayHello3("张三", height: 1.88);

  test(forTest);

  // (参数列表) {函数体} 就被定义为匿名函数, 一般只用来作为函数参数, 作用就是不需要单独声明函数
  test2(() {
    print("无返回值匿名函数被调用");
  });

  test3(() {
    print("有返回值匿名函数被调用, 结果在test3函数中获取");
    return 10;
  });

  test4(() => print("箭头函数被执行"));

  test5(() {});
  test6((abc) {
    print(abc);
  });

  test7((num1, num2) {
    return num1 * num2;
  });

  test8((num1, num2) => (num1 * num2));

  var demo1 = demo();
  print(demo1(30, 40));
}

// 1. 函数的返回值可以省略
int sum(int num1, int num2) {
  return num1 + num2;
}

// 根据返回值默认推导出返回值类型, 但是不加建议省略, 降低了可读性
sum2(int num1, int num2) {
  return num1 + num2;
}

// 2. dart 中没有函数重载(函数名相同, 参数不同)

// 3. 必选参数: 必须传
void sayHello1(String name) {
  print("hello" + "$name");
}

// 4. 可选参数: 位置可选参数 - 命名可选参数
// 4.1 位置可选参数: [int age, double height]
// 实参和形参在进行匹配时, 是根据位置进行匹配的
// sayHello2("张三", 10, 1.88);  第一个参数name为必传, 第二参数为选传, 必须为int类型, 且必须代表age, 第三各个参数类型为double, 代表height, 都是会进行严格校验的
void sayHello2(String name, [int? age, double? height]) {}

// 4.2 命名可选参数: {int age, double height}
// sayHello3("张三", height: 1.88); 第一个参数name为必传, 剩下需要传递什么参数直接指定即可, 比如需要传入height
void sayHello3(String name, {int? age, double? height}) {}

// 4.3 可选参数默认值
void sayHello4(String name, [int age = 10, double height = 1.88]) {}
void sayHello5(String name, {int age = 10, double height = 1.88}) {}

// 5. 函数可以作为另一个函数的参数
void test(Function foo) {
  foo();
}

void forTest() {
  print("函数作为参数被调用");
}

// 6. 匿名函数 (充当参数)
void test2(Function foo) {
  foo();
}

void test3(Function foo) {
  var result = foo();
  print("result = $result");
}

// 7. 箭头函数: 条件, 函数体只有一句代码 (充当参数)
void test4(Function foo) {
  foo();
}

// 8. typedef 封装正式开发, 增强阅读性
// 8.1 正式开发中, 不可使用Function该种方式定义函数, 因为使用接口的人不清楚是否需要传递参数给你
// test5(() {}); 和 test6((abc) {print(abc)}); 都能调用成功, 具有迷惑性
void test5(Function foo) {
  foo();
}

void test6(Function foo) {
  foo("123");
}

// 8.2 指定作为函数参数的 函数 的参数和返回值, 但是阅读性还是不高
void test7(int foo(int num1, int num2)) {
  var result = foo(20, 30);
  print("test7 result = $result");
}

// 8.3 typedef定义函数参数
typedef Calculate = int Function(int num1, int num2);
void test8(Calculate calc) {
  var result = calc(30, 30);
  print("test8 result = $result");
}

// 9. 函数最为函数的返回值
Calculate demo() {
  return (num1, num2) {
    return num1 * num2;
  };
}
