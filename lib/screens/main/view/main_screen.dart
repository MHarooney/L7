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
                  Expanded(
                    /// you may have good reason to use [DraggableScrollableSheet] but i prefer alternative in this case.
                    /// I think we dont need to use [NestedScrollView] and [CustomScrollView] both at the same time
                    /// I'm not aware of UX and it's not ok to comment but may help you, 
                    child: DraggableScrollableSheet(
                      // expand: false,
                      builder: (
                        BuildContext context,
                        ScrollController scrollController,
                      ) =>
                          NestedScrollView(
                        controller: scrollController,
                        headerSliverBuilder:
                            (BuildContext context, bool innerBoxIsScrolled) => [
                          SliverToBoxAdapter(
                            child: IntroMainScreenWidget(),
                          ),
                        ],
                        body: CustomScrollView(
                          slivers: [
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) => Column(
                                  children: [
                                    HomeScreen(),
                                    // IntroMainScreenWidget(),
                                  ],
                                ),
                                // assign count while using builder or use [SliverChildListDelegate] instead [SliverChildBuilderDelegate]
                                childCount: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Expanded(
                  //   child: SingleChildScrollView(
                  //     child: Column(
                  //       children: [
                  //         IntroMainScreenWidget(),
                  //         // SizedBox(height: 20,),
                  //         HomeScreen(),
                  //       ],
                  //     ),
                  //   ),
                  // ),
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
