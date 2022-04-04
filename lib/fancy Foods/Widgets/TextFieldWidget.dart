import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';
import '../../Constants/FontFamilyConstants.dart';
import '../../Constants/FontSizeConstants.dart';
import '../../Constants/My Icons.dart';
import '../../Constants/Size_Config.dart';
import '../../Constants/StringsAllProject.dart';

Widget textFieldWidget(){

  return Padding(
    padding: EdgeInsets.only(
        top: SizeConfig.defaultSize! * 14,
        left: SizeConfig.defaultSize! * 1.8,
        right: SizeConfig.defaultSize! * 4),
    child: Container(
      decoration: BoxDecoration(
          color: Color_Const.white,
          borderRadius: BorderRadius.only(
            bottomRight:
            Radius.circular(SizeConfig.defaultSize! * 3),
            bottomLeft:
            Radius.circular(SizeConfig.defaultSize! * .5),
            topLeft:
            Radius.circular(SizeConfig.defaultSize! * .5),
          )),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding:
          EdgeInsets.only(top: SizeConfig.defaultSize! * 1.5),
          hintText: AllStringsConstants.hintSearchFeildFood,
          hintStyle: TextStyle(
              fontFamily: FontFamilyConstants.montserrat,
              fontSize: FontSizeConstants.fontsize13),
          prefixIcon:
          Icon(MyIcons.search, color: Color_Const.grey),
        ),
      ),
    ),
  );
}
