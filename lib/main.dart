import 'dart:async';

import 'package:l7/locator.dart';
import 'nonweb_url_strategy.dart'
    if (dart.library.html) 'web_url_strategy.dart';
import 'package:l7/routs/app_router.dart';
import 'package:l7/routs/routs_names.dart';
import 'package:l7/screens/home/view/home_screen.dart';
import 'package:l7/services/navigation_service.dart';
import 'package:l7/utils/themes.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils/colors.dart';

void main() async {
  await configureApp();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('ar', 'EG'),
        Locale('en', 'US'),
      ],
      startLocale: Locale('en', 'US'),
      fallbackLocale:  Locale('ar', 'EG'),
      saveLocale: true,
      path: 'assets/translations',
      child: MyApp(),
    ),
  );
}

Future configureApp() async {
  configureUrl();
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // await Firebase.initializeApp();

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: tr('app_name'),

      theme: darkTheme,
      initialRoute: RouteName.MAIN,
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: AppRouter.generateRoute,
      // home: HomeScreen(),
    );
  }
}
