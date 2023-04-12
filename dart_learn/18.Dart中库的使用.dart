// 1. Dart中默认情况下, 一个Dart文件就是一个模块(库文件)

// 2. 系统的库: import 'dart: 库的名字';
import 'dart:math';

// 3. 自定义的库: import '自定义库的相对路径/库的名字';
import 'utils/math_utils.dart';
import 'utils/math_utils2.dart' as mu2;

// 5. 默认情况下, 导入一个库时, 导入的是这个库的全部内容
//    * show: 执行要导入的内容
//    * hide: 隐藏某个要导入的内容, 导入其他内容
import 'utils/math_utils3.dart' show minus; // 只导入minus,  其他的不导入
import 'utils/math_utils3.dart' hide devide; // 只隐藏devide,  其他的都导入
import 'utils/math_utils3.dart' hide devide, minus; // 可以写多个

// 6. utils 文件夹内有多个库文件, 一一导入太麻烦, 所以只需要创建一个公共头文件utils.dart, 导入进来即可.
// utils.dart内部格式为: export '库文件名称';
// import 'utils/utils.dart';

// 7. 使用第三方的库: 
// import 'package:库名/库文件' as 别名;
// 起别名是为了避免冲突, 参考math_utils.dart

void main(List<String> args) {
  final num1 = 20;
  final num2 = 21;
  print(min(num1, num2)); // 20; 就会引入系统的计算库import 'dart:math';

  print(sum(num1, num2)); // 41; 就会引入自定义的库import 'utils/math_utils.dart';

  // 4.1 未做任何处理, 报错: The argument type 'int' can't be assigned to the parameter type 'double'.
  // print(multiply(num1, num2));

  // 4.2 使用as 关键字给库文件math_utils2.dart起一个别名(mu2)
  print(mu2.multiply(num1, num2)); // 420

  // 7. 下划线 (_) 开头则表示该标识符在库内是私有的, 同其他语言的private
  // 当属性或者方法前面添加下划线, 就代表私有了, 外界就无法调用了, 就报错了:
  // print(_privateMinus(10, 11)); // 报错: The function '_privateMinus' isn't defined.
  print(minus(5, 1)); // 4
}

// 4. 当库文件中和当前类中存在同名方法
// 使用as 关键字给库文件起一个别名
double multiply(double num1, double num2) {
  return num1 * num2;
}
