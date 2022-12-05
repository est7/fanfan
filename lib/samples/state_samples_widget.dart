import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import '../views/appbar.dart';

class MessagePage extends HookConsumerWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarExt.leftTitle('设置'),
      body: _buildBody(ref),
    );
  }

  _buildBody(WidgetRef ref) {
    return MyBodyPage();
  }
}

class MyBodyPage extends StatefulWidget {
  const MyBodyPage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyBodyPageState();
  }
}

class _MyBodyPageState extends State<MyBodyPage> {
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

//用户姓名
  String userName = "";

  //性别
  int sex = 1;

  //是否开启永不宕机
  bool flag = false;

  //颜值打分
  double sliderValue = 0;

  //兴趣爱好
  List hobbies = [
    {"checked": false, "title": "打篮球"},
    {"checked": false, "title": "爬山"},
    {"checked": false, "title": "写代码"},
  ];

  //个人信息
  String info = "";

  _buildBody() {
    // final state = ref.watch(rssConfigProvider);
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        TextField(
          decoration: const InputDecoration(
            hintText: "请输入用户名",
          ),
          onChanged: (value) {
            this.userName = value;
          },
        ),
        SizedBox(
          height: 10,
        ),
        Text("性别"),
        Row(
          children: [
            Text('nan'),
            Radio(
              value: 1,
              groupValue: sex,
              onChanged: _sexChanged,
            ),
            Text('nv'),
            Radio(
              value: 2,
              groupValue: sex,
              onChanged: _sexChanged,
            )
          ],
        ),
        const Text("兴趣爱好："),
        Row(
          //兴趣爱好
          children: _getHobbies(),
        ),
        _slider(),
        Row(
          //颜值打分
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("颜值：$sliderValue分"),
          ],
        ),
      ],
    );
  }

//构建滑块 Widget
  Slider _slider() {
    return Slider(
      value: sliderValue,
      max: 100,
      //最大值为 100
      activeColor: Colors.red,
      //滑块颜色为红色
      inactiveColor: Colors.green,
      //轨道颜色为绿色
      label: "进度：$sliderValue",
      //气泡文本
      divisions: 10,
      //刻度
      onChanged: (value) {
        //正在滑动或者点击，未松手
        updateSlider(value);
      },
      onChangeStart: (value) {
        //刚开始点击
        updateSlider(value);
      },
      onChangeEnd: (value) {
        //滑动或者点击结束，已松手
        updateSlider(value);
      },
    );
  }

  //更新性别状态
  void _sexChanged(value) {
    setState(() {
      sex = value as int;
    });
  }

  //获取兴趣爱好 Widget List
  List<Widget> _getHobbies() {
    List<Widget> temp = [];
    for (var element in hobbies) {
      //添加 Text
      temp.add(Text(element["title"]));
      //添加 Checkbox
      temp.add(Checkbox(
          value: element["checked"],
          onChanged: (value) {
            setState(() {
              element["checked"] = value;
            });
          }));
    }
    return temp;
  }

  // 更新状态
  void updateSlider(value) {
    sliderValue = value;
    setState(() {});
  }
}
