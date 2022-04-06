import 'package:flutter/cupertino.dart';

class DimensionsConstants {
  static late var dimensions2;
  static late var dimensions7;
  static late var dimensions8;
  static late var dimensions11;
  static late var dimensions15;
  static late var dimensions20;
  static late var dimensions30;

  void init(BuildContext context) {
    dimensions2 = MediaQuery.of(context).size.width * 0.0013 +
        MediaQuery.of(context).size.height * 0.0013;
    dimensions7 = MediaQuery.of(context).size.width * 0.005 +
        MediaQuery.of(context).size.height * 0.005;
    dimensions8 = MediaQuery.of(context).size.width * 0.0062 +
        MediaQuery.of(context).size.height * 0.0062;
    dimensions11 = MediaQuery.of(context).size.width * 0.008 +
        MediaQuery.of(context).size.height * 0.008;
    dimensions15 = MediaQuery.of(context).size.width * 0.015 +
        MediaQuery.of(context).size.height * 0.015;
    dimensions20 = MediaQuery.of(context).size.width * 0.02 +
        MediaQuery.of(context).size.height * 0.02;
    dimensions30 = MediaQuery.of(context).size.width * 0.03 +
        MediaQuery.of(context).size.height * 0.03;


  }
}
