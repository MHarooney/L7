import 'package:l7/screens/home/home_screen.dart';
import 'package:l7/screens/not_found_screen/NotFoundScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RoutingData.dart';
import 'RoutsNames.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var uriData = Uri.parse(settings.name!);

    var routingData = RoutingData(
      queryParameters: uriData.queryParameters,
      route: uriData.path,
    );

    switch (routingData.route) {
      // case RouteName.SPLASH:
      //   return _getPageRoute(SplashScreen(), settings);
      //   case RouteName.ON_BOARDING:
      //   return _getPageRoute(OnBoardingScreen(), settings);
      case RouteName.HOME:
        return _getPageRoute(HomeScreen(), settings);
      // case RouteName.SETTINGS:
      //   return _getPageRoute(SettingsScreen(), settings);
      // case RouteName.PRIVACYPOLICY:
      //   return _getPageRoute(PrivacyPolicyScreen(), settings);
      default:
        return _getPageRoute(NotFoundScreen(), settings);
    }
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget? child;
  final String? routeName;

  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child!,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}