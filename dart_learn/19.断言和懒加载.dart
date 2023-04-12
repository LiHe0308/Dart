// 3. 库的懒加载使用deferred as关键字来指定，如下例子所示：
// 等到使用时, math.min(1, 2); 即可
// 懒加载的最大好处是可以减少APP的启动时间
import 'dart:math' deferred as math;

void main(List<String> args) {
  // 1. 断言assert() : assert() 的调用将会在生产环境的代码中被忽略掉。
  // 在开发过程中，assert(condition) 将会在 条件判断 为 false 时抛出一个异常。

  final num1 = 10;
  final num2 = 10;
  final num3 = 20;
  assert(num1 == num2); // 内部条件为true, 没问题
  // assert(num1 == num3); // _AssertionError ... Failed assertion: line 14 pos 10: 'num1 == num3': is not true.)

  // 2. 懒加载: late 修饰不为空的变量, 已达到延迟加载的作用; late String description;
  late final name;

  // 在使用之前, 必须为其赋值, 不然会报错 (definitely: 明确的)
  // print(name); // The late local variable 'name' is definitely unassigned at this point.

  // 4.1 noSuchMethod测试后
  var a = A();
  a.getInfo();
  /**
   * You tried to use a non-existent member: Symbol("getInfo")
   * Unhandled exception:
   * type 'Null' is not a subtype of type 'String'
   */
}

// 4. noSuchMethod
// 如果调用了对象上不存在的方法或实例变量将会触发 noSuchMethod 方法，你可以重写 noSuchMethod 方法来追踪和记录这一行为
class A implements B {
  // Unless you override noSuchMethod, using a
  // non-existent member results in a NoSuchMethodError.
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: '
        '${invocation.memberName}');
  }
}

class B {
  final info = "this is b";
  String getInfo() => info;
}
