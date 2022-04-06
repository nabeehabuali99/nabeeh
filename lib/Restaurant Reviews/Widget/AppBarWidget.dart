import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/FontFamilyConstants.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';

import '../../Constants/Colors.dart';
 import '../../Constants/My Icons.dart';

import '../../Constants/Shared Widgets/Icon Button Widget.dart';
import '../../Constants/SizeConfig/FontSizeConstants.dart';
import '../../Constants/StringsAllProject.dart';

Widget appBarWidget() {
  return Scaffold(
    appBar: AppBar(
      title: textWidget(
          AllStringsConstants.appBarTitleResturantViews,
          FontFamilyConstants.montserrat,
          Color_Const.grey,
          FontSizeConstants.fontsize15,
          FontWeight.normal),
      leading: iconButtonWidget(MyIcons.arrow, Color_Const.grey,
          SizeConfig.defaultSize! * 1.5, () {}),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: SizeConfig.defaultSize! * 1),
          child: Icon(
            MyIcons.edit,
            color: Color_Const.grey,
          ),
        )
      ],
      elevation: 0.0,
      backgroundColor: Color_Const.transparent,
    ),
  );
}
