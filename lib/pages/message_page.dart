import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import '../views/appbar.dart';

final counterProvider = StateNotifierProvider((_) => CounterNotifier(0));

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier(int initialState) : super(initialState);

  void increment() => state++;
}

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
    return Consumer(builder: (context, ref, child) {
        final counter = watch(counterProvider.state);
    return Text('Counter: $counter');
  },);
  }
}
