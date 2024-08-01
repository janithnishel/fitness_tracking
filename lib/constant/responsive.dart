import 'package:flutter/material.dart';

class Responsive {
  //implement the methord check whether the desktop screen size
  static bool isDesktopScreenSize(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  //implement the methord check whether the tablet screen size

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 850 &&
      MediaQuery.of(context).size.width < 1100;

  //implement the methord check whether the Mobile screen size

  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width <500; 
}
