import 'package:flutter/cupertino.dart';

class FontSizeConstants {
  static late var fontsize10;
  static late var fontsize13;
  static late var fontsize15;
  static late var fontsize20;
  static late var fontsize30;

  void init(BuildContext context) {
    fontsize10 = MediaQuery.of(context).size.width * 0.01 +
        MediaQuery.of(context).size.height * 0.01;
    fontsize13 = MediaQuery.of(context).size.width * 0.013 +
        MediaQuery.of(context).size.height * 0.013;
    fontsize15 = MediaQuery.of(context).size.width * 0.015 +
        MediaQuery.of(context).size.height * 0.015;
    fontsize20 = MediaQuery.of(context).size.width * 0.02 +
        MediaQuery.of(context).size.height * 0.02;
    fontsize30 = MediaQuery.of(context).size.width * 0.03 +
        MediaQuery.of(context).size.height * 0.03;
  }
}
