import 'package:flutter/material.dart';
import 'package:l7/screens/BaseScreen.dart';
import 'package:l7/screens/home/viewmodel/home_view_model.dart';
import 'package:l7/services/responsive.dart';
import 'package:l7/utils/constants.dart';

import 'components/info_widget.dart';

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
        return  InfosPart();
      },
    );
  }
}
