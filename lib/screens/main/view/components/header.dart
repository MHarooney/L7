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
        return SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: kBlackBlue,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                      Image.asset("assets/images/l7_image.png", height: MediaQuery.of(context).size.height * 0.15,),
                      Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
                      Spacer(),
                      // // Socal
                      HeaderRightSide(),
                    ],
                  ),
                  // SizedBox(height: kDefaultPadding * 2),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.27,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/blog_bg.png'), fit: BoxFit.cover)
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              headLine30TitleText(
                                tr("Welcome to Our Blog"),
                                context,
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
                            ],
                          ),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right, color: Colors.white,))
                      ],
                    ),
                  ),
                  if (Responsive.isDesktop(context))
                    SizedBox(height: kDefaultPadding),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
