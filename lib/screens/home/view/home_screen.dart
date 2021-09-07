import 'package:flutter/material.dart';
import 'package:l7/screens/BaseScreen.dart';
import 'package:l7/screens/home/viewmodel/home_view_model.dart';
import 'package:l7/services/responsive.dart';
import 'package:l7/utils/constants.dart';

import 'components/search.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseScreen<HomeViewModel>(
      onModelReady: (homeViewModel) {},
      onFinish: (_) {
        print(' home screen finished');
      },
      builder: (context, homeViewModel, child) {
        print(' home screen started');
        return Scaffold(
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!Responsive.isDesktop(context))
                // IconButton(
                //   onPressed: null,
                //   icon: Icon(
                //     Icons.menu,
                //     color: Colors.white,
                //   ),
                // ),
              // Image.asset("assets/images/logo.png"),
              // Expanded(
              //   flex: 2,
              //   child: Column(
              //     children: List.generate(
              //       blogPosts.length,
              //       (index) => BlogPostCard(blog: blogPosts[index]),
              //     ),
              //   ),
              // ),
              if (!Responsive.isMobile(context))
                SizedBox(width: kDefaultPadding),
              // Sidebar
              if (!Responsive.isMobile(context))
                Expanded(
                  child: Column(
                    children: [
                      Search(),
                      SizedBox(height: kDefaultPadding),
                      // Categories(),
                      SizedBox(height: kDefaultPadding),
                      // RecentPosts(),
                    ],
                  ),
                ),
            ],
          ),
        );
      },
    );

    // return Scaffold(
    //   body: Row(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       // Expanded(
    //       //   flex: 2,
    //       //   child: Column(
    //       //     children: List.generate(
    //       //       blogPosts.length,
    //       //       (index) => BlogPostCard(blog: blogPosts[index]),
    //       //     ),
    //       //   ),
    //       // ),
    //       if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
    //       // Sidebar
    //       if (!Responsive.isMobile(context))
    //         Expanded(
    //           child: Column(
    //             children: [
    //               Search(),
    //               SizedBox(height: kDefaultPadding),
    //               // Categories(),
    //               SizedBox(height: kDefaultPadding),
    //               // RecentPosts(),
    //             ],
    //           ),
    //         ),
    //     ],
    //   ),
    // );
  }
}
