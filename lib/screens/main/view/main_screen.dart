import 'package:flutter/material.dart';
import 'package:l7/screens/home/view/home_screen.dart';
import 'package:l7/screens/main/view_model/main_view_model.dart';
import 'package:l7/utils/constants.dart';

import '../../BaseScreen.dart';
import 'components/header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  // final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return BaseScreen<MainViewModel>(
      onModelReady: (mainViewModel){},
      builder: (context, viewModel, _) {
        return Scaffold(
          key: viewModel.scaffoldKey,
          drawer: SideMenu(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Header(),
                // Container(
                //   padding: EdgeInsets.all(kDefaultPadding),
                //   constraints: BoxConstraints(maxWidth: kMaxWidth),
                //   child: SafeArea(child: HomeScreen()),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
