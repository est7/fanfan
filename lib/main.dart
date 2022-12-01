import 'package:auto_route/auto_route.dart';
import 'package:fanfan/provider.dart';
import 'package:fanfan/router/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Fanfan',
      theme: ThemeData.light(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routeInformationParser: myRouter.defaultRouteParser(),
      routeInformationProvider: myRouter.routeInfoProvider(),
      routerDelegate: AutoRouterDelegate(
        myRouter,
        navigatorObservers: () => [AppRouteObserver()],
      ),
      builder: myToast.init(),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
