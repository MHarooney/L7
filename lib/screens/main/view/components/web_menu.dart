import 'package:flutter/material.dart';
import 'package:l7/screens/main/view_model/main_view_model.dart';
import 'package:l7/utils/constants.dart';

import '../../../BaseScreen.dart';

class WebMenu extends StatelessWidget {
  // final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return BaseScreen<MainViewModel>(
      onModelReady: (homeViewModel) {},
      builder: (context, viewModel, _){
        return Row(
          children: List.generate(
            viewModel.menuItems.length,
                (index) => WebMenuItem(
              text: viewModel.menuItems[index],
              isActive: index == viewModel.selectedIndex,
              press: () => viewModel.setMenuIndex(index),
            ),
          ),
        );
      },
    );
  }
}

class WebMenuItem extends StatelessWidget {
  WebMenuItem({
    Key? key,
    @required this.isActive,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final bool? isActive;
  final String? text;
  final VoidCallback? press;


  bool _isHover = false;

  Color _borderColor() {
    if (isActive!) {
      return kPrimaryColor;
    } else if (!isActive! & _isHover) {
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press!,
      onHover: (value) {
          _isHover = value;
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: _borderColor(), width: 3),
          ),
        ),
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontWeight: isActive! ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
