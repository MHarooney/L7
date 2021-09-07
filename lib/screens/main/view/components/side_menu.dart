import 'package:flutter/material.dart';
import 'package:l7/screens/BaseScreen.dart';
import 'package:l7/screens/main/view_model/main_view_model.dart';
import 'package:l7/utils/constants.dart';


class SideMenu extends StatelessWidget {
  // final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return BaseScreen<MainViewModel>(
      onModelReady: (mainViewModel){},
      builder: (context, viewModel, _){
        return Drawer(
          child: Container(
            color: kDarkBlackColor,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 3.5),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                ),
                ...List.generate(
                  viewModel.menuItems.length,
                      (index) => DrawerItem(
                    isActive: index == viewModel.selectedIndex,
                    title: viewModel.menuItems[index],
                    press: () {
                      viewModel.setMenuIndex(index);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String? title;
  final bool? isActive;
  final VoidCallback? press;

  const DrawerItem({
    Key? key,
    @required this.title,
    @required this.isActive,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive!,
        selectedTileColor: kPrimaryColor,
        onTap: press,
        title: Text(
          title!,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
