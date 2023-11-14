import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'config/dependency.dart';
import 'routes/app_router.dart';
import 'routes/app_router.gr.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();
    return MaterialApp.router(
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      // theme: context.locale.languageCode == "lo" ? ThemeConstants().getThemeLanguageLao : ThemeConstants().getThemeLanguageEnglish,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      routerDelegate: router.delegate(
        deepLinkBuilder: (_) => const DeepLink([
          PageRouteInfo(BloodStockRoute.name),
        ]),
      ),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
