void main(List<String> args) {
  const p1 = Person("ll");
  const p2 = Person("ll");
  print(identical(p1, p2)); // 指向了同一块内存
}

// 常量构造函数
// 属性final 修饰
// 构造函数使用const 修饰
// 外界使用对象时, 使用const 声明
class Person {
  final String name;
  const Person(this.name);

  // final String age;
  // const Person(this.name, this.age);
  // 常量构造函数里面, 一般只能存在一个构造函数, 不存在多个
  // 原因: 1. dart不支持重载; 2. 参数不同, final必须全部初始化, 不符合标准, const Person(this.name);就报错了...
}
