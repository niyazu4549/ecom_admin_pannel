import 'package:flutter/material.dart';

class ResponsiveWidget {
  //this function for check the computer screen
  static bool isComputerScreen({required BuildContext context}) {
    return MediaQuery.of(context).size.width > 1200;
  }

  //this function for check the tab screen
  static bool isTabScreen({required BuildContext context}) {
    return (MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200);
  }

  //this function for check the Mobile screen
  static bool isMobileScreen({required BuildContext context}) {
    return MediaQuery.of(context).size.width < 800;
  }
}
