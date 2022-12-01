import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../views/appbar.dart';


class AtmePage extends HookConsumerWidget {
  const AtmePage({super.key});

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
    return const Text('AtmePage');
  }
}
