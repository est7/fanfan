import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import '../views/appbar.dart';

class MessagePage extends HookConsumerWidget {
  const MessagePage({super.key});

  // ArticlePage({Key? key, required this.rss}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarExt.leftTitle('设置'),
      body: _buildBody(ref),
    );
  }

  _buildBody(WidgetRef ref) {
    // final state = ref.watch(rssConfigProvider);
    return Stack(
      children: const [
        Align(
          alignment: Alignment.bottomRight, //右下
          child: Text('123'),
        ),
        NewWidget()
      ],
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Container(
            color: Colors.black,
            height: 180,
          ),
          const SizedBox(height: 10),
          Container(
              child: const Text("row1")
                  .bold()
                  .fontSize(24)
                  .padding(all: 10)
                  .backgroundColor(Colors.amber)
                  .alignment(Alignment.center)),
          const SizedBox(height: 10),
          Row(children: [
            Expanded(
                flex: 3,
                child: Image.network(
                    "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg",
                    fit: BoxFit.cover,
                    height: 100)),
            const SizedBox(width: 10),
            Expanded(
                flex: 2,
                child: Container(
                  height: 150,
                  alignment: Alignment.center,
                  color: Colors.black,
                  child: ListView(
                    children: [
                      Image.network(
                          "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg",
                          fit: BoxFit.cover,
                          height: 45),
                      const SizedBox(height: 10), //高度为 10 的间距
                      Image.network(
                          "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg",
                          fit: BoxFit.cover,
                          height: 45),
                      const Text("123"),
                      const Text("123"),
                      const Text("123"),
                      const Text("123"),
                      const Text("123"),
                      const Text("123"),
                      const Text("123"),
                      const Text("123"),
                      const Text("123"),
                      const Text("123"),
                      const Text("123")
                    ],
                  ),
                ))
          ]),
          const Divider(),
          ListTile(
            // ListTile 实现 item
            leading: ClipOval(
              //圆形图片
              child: Image.network(
                "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg",
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            title: const Text("你好，我是刘亦菲", //标题
                style: TextStyle(
                    color: Colors.green, fontWeight: FontWeight.bold)),
            subtitle: const Text("很高兴认识你", //副标题
                style: TextStyle(
                  color: Colors.orange,
                )),
          )
        ]));
  }
}
