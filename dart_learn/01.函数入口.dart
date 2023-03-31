
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main(List<String> args) {
  // print("hello world");

  var p = Person("aaa", 18);
  print(p.name);
  print(p.age);
  // 代码自动保存 - vccode -> 右上角文件 -> 自动保存(勾选即可)
  // iOS重载 (oc不支持(但是可以使用参数个数不同来重载方法), Swift支持)
  // dart不支持重载, 加参数就需要命名构造函数.withXXXX(this.对应参数来解决), 或者.withMap(MAP<String: String>)
  // 定义不可变的字典static final Map<String, Person4> _nameCache = {};????
}

/**
 * 1. main函数是dart的入口
 * 2. dart中使用print函数进行打印操作
 * 3. 每一句代码结束都要加分号 (;)
 */

/* 快捷键
command + /                单行注释
option + shift + a         多行注释
option + shift + f         格式化代码
control ~                  终端显隐
control command space      唤出表情、常用字符 
command shift k            删除当前行
command b                  左侧边栏显隐

已安装code runner 插件之后, 右侧就多出了一个 '三角' 运行的按钮, 或者使用
control option n           运行代码(run code)

未安装code runner 插件, 只能通过终端命令来运行文件, 
打开终端窗口:
cd /dart 文件目录下
dart 01.函数入口.dart 即可运行
 */