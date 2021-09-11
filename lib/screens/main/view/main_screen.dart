import 'package:flutter/material.dart';
import 'package:l7/screens/home/view/home_screen.dart';
import 'package:l7/screens/main/view_model/main_view_model.dart';

import '../../BaseScreen.dart';
import 'components/header.dart';
import 'components/intro_main_screen_widget.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseScreen<MainViewModel>(
      onModelReady: (mainViewModel) {},
      onFinish: (mainViewModel) {},
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
                  // DraggableScrollableSheet(
                  //   builder: (BuildContext context,
                  //           ScrollController scrollController) =>
                  //       NestedScrollView(
                  //     controller: scrollController,
                  //     headerSliverBuilder:
                  //         (BuildContext context, bool innerBoxIsScrolled) => [
                  //       SliverToBoxAdapter(
                  //         child: IntroMainScreenWidget(),
                  //       ),
                  //     ],
                  //     body: CustomScrollView(
                  //       slivers: [
                  //         SliverList(
                  //           delegate: SliverChildBuilderDelegate(
                  //             (context, index) => Column(
                  //               children: [
                  //                 HomeScreen(),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          IntroMainScreenWidget(),
                          // SizedBox(height: 20,),
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

// IntroMainScreenWidget(),
// Expanded(
//   child: SingleChildScrollView(
//     physics: BouncingScrollPhysics(),
//     child: Column(
//       children: [
//         HomeScreen(),
//       ],
//     ),
//   ),
// ),
