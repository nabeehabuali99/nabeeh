import 'package:flutter/material.dart';

Widget textWidget(
    String title, String fontFamily, Color color , double fontSize,FontWeight   fontWeight  ) {
  return Text(
    title,
    style:
    TextStyle(fontFamily: fontFamily, color: color, fontSize: fontSize,fontWeight: fontWeight ),
  );
}