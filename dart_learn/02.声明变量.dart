void main(List<String> args) {
  // 1. 明确的声明
  String name = "张三";
  print("$name");
  print(name);

  // 2. 类型推导(var/final/const)

  // 2.1 var声明变量
  var age = 20;
  // age = "abc"; A value of type 'String' can't be assigned to a variable of type 'int'. age虽然没有明确类型, 但是已经被20推导成int类型, 在此赋值String将报错

  // 2.2 final声明常量
  final height = 1.88;
  // height = 2.00; The final variable 'height' can only be set once. 1.88即为最后一次赋值, 不能够再次赋值

  // 2.3 const 声明常量
  const address = "北京市";
  // address = "上海市"; Constant variables can't be assigned a value. 常量不能被赋值

  // 2.4 final 和const 的区别
  // const 必须赋值, 常量值(编译期间需要有一个确定的值)
  // final 可以通过计算/函数获取一个值(运行期间来获取一个值)
  // const date1 = DateTime.now(); Const variables must be initialized with a constant value. const修饰的变量必须初始化一个常量值, 所以是错误的写法
  final date2 = DateTime.now();
  print(date2);

  // 没有使用 final 或 const 修饰的变量的值是可以被更改的，即使这些变量之前引用过 const 的值。比如:
  var list = const [];
  // list[0] = 10;  // 这句话运行起来就会崩溃, 因为list是一个不可变的数组, 修改其中元素造成崩溃
  list = [1, 2, 3]; // 可以进行整体的修改
  print(list);

  // final一般用的比较多, 因为一般多数情况都是在运行时获取到某一值
  // const多用于获取获取同一对象, 节省堆内存开销
  final p1 = Person("tom");
  final p2 = Person("tom");
  // identical 判断两个对象是否相同, 地址是否相同
  print(identical(p1, p2)); // false, 相当于在堆中开辟了两块空间, 初始化了相同的字符串tom

  const p3 = Person2("jack");
  const p4 = Person2("jack");
  const p5 = Person2("rose");
  print(identical(p3, p4)); // true, 只要通过jack字符串初始化的, 都会得到相同的一个对象, 类似内部帮你完成了指定单例设计
  print(identical(p4, p5)); // flase, 同样开辟了两段内存
}

class Person {
  late String name;

  Person(String name) {
    this.name = name;
  }
}

class Person2 {
  final String name;
  const Person2(this.name); 
}
