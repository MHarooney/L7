import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:l7/services/responsive.dart';
import 'package:l7/utils/texts.dart';

class InfosPart extends StatelessWidget {
  const InfosPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          Container(
            width: 200,
            child: Column(
              children: [
                largeText(
                  '1800+',
                  context,
                  webTextColor: Colors.blue,
                  mobileTextColor: Colors.blue,
                ),
                smallText(tr('completed_projects'), context),
              ],
            ),
          ),
          Container(height: 50, child: VerticalDivider(color: Colors.grey)),
          Container(
            width: 200,
            child: Column(
              children: [
                largeText(
                  '18+',
                  context,
                  webTextColor: Colors.blue,
                  mobileTextColor: Colors.blue,
                ),
                smallText(tr('years_of_experience'), context),
              ],
            ),
          ),
          if (!Responsive.isMobile(context))
            Container(height: 50, child: VerticalDivider(color: Colors.grey)),
          Container(
            width: 200,
            child: Column(
              children: [
                largeText(
                  '810+',
                  context,
                  webTextColor: Colors.blue,
                  mobileTextColor: Colors.blue,
                ),
                smallText(tr('global_customers'), context),
              ],
            ),
          ),
          Container(height: 50, child: VerticalDivider(color: Colors.grey)),
          Container(
            width: 200,
            child: Column(
              children: [
                largeText(
                  '36',
                  context,
                  webTextColor: Colors.blue,
                  mobileTextColor: Colors.blue,
                ),
                smallText('Countries Clients Served', context),
              ],
            ),
          ),
          SizedBox(
            height: !Responsive.isMobile(context) ? 200 : 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Divider(),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: !Responsive.isMobile(context)
                ? const EdgeInsets.symmetric(horizontal: 200)
                : const EdgeInsets.all(0),
            child: largeText(
              tr('company_desc'),
              context,
            ),
          ),
        ],
      ),
    );
  }
}
