import 'package:flutter/material.dart';

void main() {
  // 变量
  bool z = true;
  String a = 'fads';
  int d = 3213;

  double e = 0x32;

  //var：让 Dart 自动判断类型的声明方式
  var y = 'fasdf';
  var x = "fasdf";
  // 可以使用三个单引号或者双引号表示多行字符串:
  var xy = '''
  fasdfasdfa
  dsfasdfasd
  adsfafa
  ''';

  //const在赋值时, 赋值的内容必须是在编译期间就确定下来的
  // final在赋值时, 可以动态获取, 比如赋值一个函数
  //
  // String getName() {
  //   return 'eagle';
  // }
  //
  // main(List<String> args) {
  //   const name = getName(); // 错误的做法, 因为要执行函数才能获取到值
  //   final name = getName(); // 正确的做法
  // }
  const b = 'fasf';
  // b = 'fdasf';
  final c = 'fasf';
  // c = 'dsfa';
  // const time = DateTime.now(); // 错误的赋值方式
  final time = DateTime.now();

  //list map
  // Map的定义
// 1.使用类型推导定义
  var list = [1, 2, 3, 4];
  List<int> list1 = [1, 2, 3, 4];
  var set = {'fasd', x, c};
  Set<Object> set1 = {1, 2};

  var infoMap1 = {'name': 'eagle', 'age': 18};

// 2.明确指定类型
  Map<String, Object> infoMap2 = {'height': 1.88, 'address': '北京市'};

  // ?? 级联
  x ?? 'fasd';
  var myApp = MyApp();
}

int checksomething(int x, int y) {
  return x + y;
}

checksomething1(x, y) {
  x + y;
}

checksomething2(x, y) => x + y;

//可选参数
// 可选参数可以分为 命名可选参数 和 位置可选参数
// 定义方式:
//
// 命名可选参数: {param1, param2, ...}
// 位置可选参数: [param1, param2, ...]

printsomething(String a, {required String b, String c = 'ff'}) {}

// 定义位置可选参数
printInfo2(String name, [int? age, double? height]) {}

//函数是一等公民
//函数作为参数传递
est(Function func) {
  func('eagle');
}

//匿名函数的使用
dosome(List<String> args) {
  // 1.定义数组
  var movies = ['盗梦空间', '星际穿越', '少年派', '大话西游'];

  // 2.使用forEach遍历: 有名字的函数
  printElement(item) {}
  //labdma
  var printElement1 = (item) => print(item);
  //可以这样写
  printElement2(item) => print(item);

  movies.forEach(printElement);

  // 3.使用forEach遍历: 匿名函数
  movies.forEach((item) {
    print(item);
  });

  movies.forEach((item) => print(item));
  movies.forEach(printElement1);
}

//闭包可以访问其词法范围内的变量，即使函数在其他地方被使用，也可以正常的访问。
doClourse(List<String> args) {
  makeAdder(num addBy) {
    return (num i) {
      return i + addBy;
    };
  }

  var adder2 = makeAdder(2);
  print(adder2(10)); // 12
  print(adder2(6)); // 8

  var adder5 = makeAdder(5);
  print(adder5(10)); // 15
  print(adder5(6)); // 11
}

//？？ ??=  ?.
nullequals(List<String> args) {
  var name1 = 'eagle';
  print(name1);
  // var name2 = 'kobe';
  var name2 = null;
  name2 ??= 'james';
  print(name2); // 当name2初始化为kobe时，结果为kobe，当初始化为null时，赋值了james

  var name3 = name2 ?? 'james';
}

//流程语句
checksomething3() {
  bool isGood = true;
  if (isGood) {
  } else {
    print('fdsaf');
  }

  for (var i = 0; i < 10; i++) {}

  classuse() {
    var key = new Key('key');

    MyApp myapp = new MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

abstract class Runner {
  run();
}

abstract class Flyer {
  fly();
}

//没有接口，但是可以这样用

class SuperMan implements Runner, Flyer {
  @override
  run() {
    print('超人在奔跑');
  }

  @override
  fly() {
    print('超人在飞');
  }
}

//Mixin
mixinusecase(List<String> args) {
  var superMan = minxinMain();
  superMan.run();
  superMan.fly();
}

mixin Runnermixin {
  run() {
    print('在奔跑');
  }
}

mixin Flyermixin {
  fly() {
    print('在飞翔');
  }
}

// implements的方式要求必须对其中的方法进行重新实现
// class SuperMan implements Runner, Flyer {}

class minxinMain with Runnermixin, Flyermixin {

}
