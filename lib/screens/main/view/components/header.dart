import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:l7/screens/BaseScreen.dart';
import 'package:l7/screens/main/view/components/web_menu.dart';
import 'package:l7/screens/main/view_model/main_view_model.dart';
import 'package:l7/services/responsive.dart';
import 'package:l7/utils/constants.dart';
import 'package:l7/utils/texts.dart';

import 'header_right_side.dart';

class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BaseScreen<MainViewModel>(
      onModelReady: (mainViewModel) {},
      builder: (context, viewModel, _) {
        return Container(
          width: double.infinity,
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: kMaxWidth),
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          if (!Responsive.isDesktop(context))
                            IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                            ),
                          Image.asset("assets/images/l7_image.png", height: MediaQuery.of(context).size.height * 0.15,),
                          Spacer(),
                          if (Responsive.isDesktop(context)) WebMenu(),
                          Spacer(),
                          HeaderRightSide(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
