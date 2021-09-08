import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:l7/services/responsive.dart';
import 'package:l7/utils/constants.dart';

class HeaderRightSide extends StatelessWidget {
  const HeaderRightSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.facebook,color: kBlackBlue,)),
        if (!Responsive.isMobile(context))
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.language,color: kBlackBlue,)),
          ),
        // if (!Responsive.isMobile(context))
        //   SvgPicture.asset("assets/icons/feather_twitter.svg"),
        SizedBox(width: kDefaultPadding),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5,
                vertical:
                    kDefaultPadding / (Responsive.isDesktop(context) ? 1 : 2),
              ),
            ),
            child: Text("Let's Talk"),
          ),
        ),
      ],
    );
  }
}
