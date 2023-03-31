void main(List<String> args) {
  // 1. 列表list: [];
  var list = ["a", "b", "c"];
  print(list);

  // 1.1 拓展操作符...
  var list2 = ["d", ...list]; // 将list 追加至list2之中
  print(list2);
  // 如果扩展操作符右边可能为 null ，你可以使用 null-aware 扩展操作符（...?）来避免产生异常
  var listNull = null;
  var listAddNull = ["e", ...?listNull];
  print(listAddNull);

  // 1.2 指定类型list(数组)    在[]之前添加<类型>
  var list3 = <String>[];

  // 不指定指定类型, 类型可以不同
  var list4 = [1, 'a', 1.88];

  // 2. 集合Set: {};
  var movies = {"你好", "我好", "大家好"};
  // 2.1 在 Dart 中，set 是一组特定元素的无序集合且不可重复。和Map及其相似, set内部的类型必须相同

  // 2.2 初始化一个set, var names = <指定类型>{} 或者 Set<指定类型> name = {}
  var movies1 = <int>{};
  Set<int> movies2 = {};

  // 2.3 Set最常用的地方就是去重
  var list5 = [1, 2, 3, 4, 4, 4];
  var set = Set.from(list5); // 结果是一个set
  var list6 = set.toList(); // 将set 转化为list
  print(list6);

  // 3. 映射(字典)Map: {};
  var info = {
    "name": "张三",
    "age": 18
  }; //  Map 是用来关联的对 keys 和 values 的对象。其中键和值都可以是任何类型象。但是键必须是可哈希的, 一般便于理解都是String

  // 4. {}默认初始化的到底是Set 还是Map??? . {}默认为Map, 当你需要初始化一个默认Set时, 要指定类型.
  var par = {}; // Creates a map, not a set.
  print(par.runtimeType); // _InternalLinkedHashMap<dynamic, dynamic>
}
