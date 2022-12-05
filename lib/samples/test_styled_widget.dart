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
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
                child: const Text("row1")
                    .bold()
                    .fontSize(24)
                    .padding(all: 10)
                    .backgroundColor(Colors.amber)
                    .alignment(Alignment.center)),
            Container(
              child: Align(
                alignment: Alignment.center,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xffE8F2F7),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color(0xff7AC1E7),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
                child: const Icon(Icons.home, color: Colors.white)
                    .padding(all: 10)
                    .decorated(
                        color: const Color(0xff7AC1E7), shape: BoxShape.circle)
                    .padding(all: 15)
                    .decorated(
                        color: const Color(0xffE8F2F7), shape: BoxShape.circle)
                    .padding(all: 20)
                    .card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )
                    .alignment(Alignment.center)
                    .backgroundColor(const Color(0xffEBECF1))),
            Container(
                child: const Align(
              alignment: Alignment.center,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'some text',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )),
          ],
        ));
  }
}
