import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';

import '../provider.dart';

class AppBarExt {
  static AppBar leftTitle(
    String title, {
    List<Widget>? actions,
    PreferredSizeWidget? bottom,
  }) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: false,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 28,
        ),
      ),
      actions: actions,
      bottom: bottom,
    );
  }

  static AppBar backTitle(
    String title, {
    List<Widget>? actions,
  }) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leading: HookConsumer(builder: (context, ref, child) {
        return IconButton(
          onPressed: () {
            myRouter.pop();
          },
          icon: const Icon(
            LineIcons.angleLeft,
            color: Colors.black,
          ),
        );
      }),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      actions: actions,
    );
  }
}
