import 'package:flutter/material.dart';
import 'package:l7/screens/BaseScreen.dart';
import 'package:l7/screens/main/view/components/web_menu.dart';
import 'package:l7/screens/main/view_model/main_view_model.dart';
import 'package:l7/services/responsive.dart';
import 'package:l7/utils/constants.dart';

class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BaseScreen<MainViewModel>(
      onModelReady: (mainViewModel) {},
      builder: (context, viewModel, _) {
        return Container(
          width: double.infinity,
          color: kDarkBlackColor,
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
                          Image.asset("assets/images/logo.png", height: MediaQuery.of(context).size.height * 0.1,),
                          Spacer(),
                          if (Responsive.isDesktop(context)) WebMenu(),
                          // Spacer(),
                          // // Socal
                          // Socal(),
                        ],
                      ),
                      SizedBox(height: kDefaultPadding * 2),
                      Text(
                        "Welcome to Our Blog",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPadding),
                        child: Text(
                          "Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK Team.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            height: 1.5,
                          ),
                        ),
                      ),
                      FittedBox(
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "Learn More",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: kDefaultPadding / 2),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (Responsive.isDesktop(context))
                        SizedBox(height: kDefaultPadding),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
