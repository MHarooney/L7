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
      onModelReady: (mainViewModel) {},
      builder: (context, viewModel, _) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/blog_bg.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            key: viewModel.scaffoldKey,
            drawer: Theme(
              data: Theme.of(context)
                  .copyWith(canvasColor: Colors.white.withOpacity(0.6)),
              child: SideMenu(),
            ),
            body: Container(
              color: Colors.black.withOpacity(0.35),
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Header(),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          HomeScreen(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
