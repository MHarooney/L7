import 'dart:js';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:l7/utils/texts.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: mediumText(
            tr('no_page'),
            context,
          ),
        ),
      ),
    );
  }
}
