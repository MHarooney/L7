import 'package:flutter/material.dart';
import 'package:l7/enums/ScreenState.dart';
import 'package:l7/screens/BaseViewModel.dart';

class MainViewModel extends BaseViewModel {
  int _selectedIndex = 0;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex;
  List<String> get menuItems =>
      ["Cases", "Services", "About Us", "Careers", "Blog", "Contact"];
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void setMenuIndex(int index) {
    _selectedIndex = index;
    setState(ViewState.Idle);
  }
}