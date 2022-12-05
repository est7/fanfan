import 'package:auto_route/auto_route.dart';
import 'package:fanfan/router/route.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../generated/l10n.dart';

class IndexPage extends HookConsumerWidget {
  const IndexPage({super.key});

  // ArticlePage({Key? key, required this.rss}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        AtmeRoute(),
        MessageRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
                haptic: true,
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 28,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                onTabChange: tabsRouter.setActiveIndex,
                selectedIndex: tabsRouter.activeIndex,
                tabs: [
                  GButton(
                    icon: PhosphorIcons.house,
                    text: S.of(context).tab_home,
                  ),
                  GButton(
                    icon: PhosphorIcons.at,
                    text: S.of(context).tab_atme,
                  ),
                  GButton(
                    icon: PhosphorIcons.envelope,
                    text: S.of(context).tab_message,
                  ),
                  GButton(
                    icon: PhosphorIcons.user,
                    text: S.of(context).tab_mine,
                  )
                ]),
          ),
        );
      },
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(PhosphorIcons.paperPlaneTilt),
          backgroundColor: Colors.green,
        ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
