import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:l7/services/responsive.dart';
import 'package:l7/utils/themes.dart';

import 'constants.dart';

Widget largeText(
  String text,
  BuildContext? context, {
  Color? webTextColor,
  Color? mobileTextColor,
  double? mobileFontSize,
}) {
  return Text(
    text,
    style: !Responsive.isMobile(context!)
        ? Theme.of(context).textTheme.headline2!.copyWith(
              color: webTextColor == null ? kBlackBlue : webTextColor,
            )
        : Theme.of(context).textTheme.headline1!.copyWith(
              color:
                  mobileTextColor == null ? kBlackBlue : mobileTextColor,
              fontSize: mobileFontSize == null ? null : mobileFontSize,
            ),
    textAlign: TextAlign.center,
  );
}

Widget smallText(
  String text,
  BuildContext? context, {
  Color? textColor,
}) {
  return Text(
    text,
    style: Theme.of(context!).textTheme.bodyText1!.copyWith(
          color: textColor == null ? blackDefaultColor : textColor,
        ),
    textAlign: TextAlign.center,
  );
}

Widget mediumText(
    String text,
    BuildContext? context, {
      Color? textColor,
    }) {
  return Text(
    text,
    style: Theme.of(context!).textTheme.headline3!.copyWith(
      color: textColor == null ? null : textColor,
    ),
    textAlign: TextAlign.center,
  );
}
