import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';
import '../../Constants/My Icons.dart';
import '../../Constants/SizeConfig/Dimensions.dart';
import '../../Constants/SizeConfig/Size_Config.dart';

Widget containerWidget(Widget child) {
  return Container(
    height: SizeConfig.defaultSize! * 7,
    width: SizeConfig.defaultSize! * 6,
    decoration: BoxDecoration(
      border: Border.all(
          color: Color_Const.grey,
          style: BorderStyle.solid,
          width: 1.0),
      borderRadius: BorderRadius.circular(
          DimensionsConstants.dimensions11),
    ),
    child: child
  );

}