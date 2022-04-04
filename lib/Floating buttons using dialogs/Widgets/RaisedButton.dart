import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';
import '../../Constants/FontFamilyConstants.dart';
import '../../Constants/FontSizeConstants.dart';
import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/Size_Config.dart';
import '../../Constants/StringsAllProject.dart';

Widget raisedButtonWidget(Function() onTap, Color color, Color textColor) {
  return RaisedButton(
    onPressed: onTap,
    child: Center(
      child: textWidget(
          AllStringsConstants.insideFlotingButton,
          FontFamilyConstants.montserrat,
          Color_Const.black,
          FontSizeConstants.fontsize15,
          FontWeight.normal),
    ),
    color: color,
    textColor: textColor,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 1)),
  );
}
