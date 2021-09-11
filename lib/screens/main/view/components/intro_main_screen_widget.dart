import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:l7/services/responsive.dart';
import 'package:l7/utils/constants.dart';
import 'package:l7/utils/texts.dart';

class IntroMainScreenWidget extends StatelessWidget {
  const IntroMainScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: kDefaultPadding * 2),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          color: Colors.black.withOpacity(0.35),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              largeText(tr('welcome_to_our_blog'), context,
                  mobileFontSize: 30,
                  webTextColor: Colors.white,
                  mobileTextColor: Colors.white),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: smallText(
                  tr('blog_intro'),
                  context,
                  textColor: Colors.white,
                ),
              ),
              FittedBox(
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      mediumText(
                        tr('learn_more'),
                        context,
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
        // if (Responsive.isDesktop(context))
        SizedBox(height: kDefaultPadding),
      ],
    );
  }
}
