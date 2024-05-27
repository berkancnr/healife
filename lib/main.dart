import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:healife/feature/base/base_view.dart';
import 'package:healife/feature/bodymass/body_mass_view.dart';
import 'package:healife/feature/calorie/calorie_tracking.dart';
import 'package:healife/feature/goals/goals_view.dart';
import 'package:healife/feature/login/screens/sign_in_view.dart';
import 'package:healife/feature/login/screens/sign_up_view.dart';
import 'package:healife/feature/stats/stats_detail.dart';
import 'package:healife/feature/stats/stats_view.dart';
import 'package:healife/feature/watertracking/water_tracking_view.dart';
import 'package:provider/provider.dart';

import 'product/init/application_init.dart';
import 'product/init/product_states.dart';
import 'product/init/theme_manager.dart';

Future<void> main() async {
  final appInit = ApplicationInit();
  await appInit.firstlyInit();

  runApp(
    EasyLocalization(
      fallbackLocale: appInit.manager.trLocale,
      supportedLocales: appInit.manager.supportLocales,
      path: appInit.assetPath,
      child: MultiProvider(
        providers: ProductProvider().items,
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: context.locale,
      title: "Healife",
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      theme: context.watch<ThemeManager>().currentTheme,
      home: BaseView(),
    );
  }
}
