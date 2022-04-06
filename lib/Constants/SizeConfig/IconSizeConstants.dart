import 'package:flutter/cupertino.dart';

class IconSizeConstants {
  static late var iconSize10;
  static late var iconSize13;
  static late var iconSize15;
  static late var iconSize20;
  static late var iconSize30;

  void init(BuildContext context) {
   iconSize10 = MediaQuery.of(context).size.width * 0.01 +
        MediaQuery.of(context).size.height * 0.01;
   iconSize13 = MediaQuery.of(context).size.width * 0.013 +
        MediaQuery.of(context).size.height * 0.013;
   iconSize15 = MediaQuery.of(context).size.width * 0.015 +
        MediaQuery.of(context).size.height * 0.015;
   iconSize20 = MediaQuery.of(context).size.width * 0.02 +
        MediaQuery.of(context).size.height * 0.02;
   iconSize30 = MediaQuery.of(context).size.width * 0.03 +
        MediaQuery.of(context).size.height * 0.03;
  }
}