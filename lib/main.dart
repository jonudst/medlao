import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:medlao/config/dependency.dart';
import 'package:medlao/l10n/l10n.dart';

import 'app.dart';

void main() async {
  await dependency();
  runApp(
    EasyLocalization(
      startLocale: L10n().supportLanguage[0],
      supportedLocales: L10n().supportLanguage,
      path: 'asset/l10n',
      fallbackLocale: L10n().supportLanguage[0],
      child: const App(),
    ),
  );
}
