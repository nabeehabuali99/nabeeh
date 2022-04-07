import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';
import '../../Constants/FontFamilyConstants.dart';
import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/SizeConfig/FontSizeConstants.dart';

Widget rowWidgets() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      textWidgetWithoutColor('Rent', FontFamilyConstants.montserrat,
          FontSizeConstants.fontsize20, FontWeight.bold),
      textWidget('More', FontFamilyConstants.montserrat, Color_Const.grey,
          FontSizeConstants.fontsize15, FontWeight.normal)
    ],
  );
}
