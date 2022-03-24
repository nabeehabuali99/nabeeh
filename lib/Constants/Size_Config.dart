import 'package:flutter/material.dart';

class SizeConfig {
  static late  double screenWidth=0.0;
  static late double screenHeight=0.0;
  static late  double defaultSize=0.0;
  static late Orientation orientation;

  void int(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;

    defaultSize = orientation == Orientation.landscape
        ? screenHeight * .024
        : screenWidth * .024 ;
  }
}
