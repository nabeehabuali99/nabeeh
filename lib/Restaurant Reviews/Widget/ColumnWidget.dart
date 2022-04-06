import 'package:flutter/cupertino.dart';

import '../../Constants/Colors.dart';
import '../../Constants/FontFamilyConstants.dart';
 import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/SizeConfig/FontSizeConstants.dart';
import '../../Constants/StringsAllProject.dart';

Widget columnWidget(String number ,nameText ){

  return Column(
    children: <Widget>[
      textWidget(
          number,
          FontFamilyConstants.montserrat,
           Color_Const.red,
          FontSizeConstants.fontsize15,
          FontWeight.normal),
      textWidget(
          nameText,
          FontFamilyConstants.montserrat,
          Color_Const.grey,
          FontSizeConstants.fontsize15,
          FontWeight.normal)
    ],
  );
}