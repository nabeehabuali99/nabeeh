import 'package:flutter/cupertino.dart';

import '../../Constants/FontFamilyConstants.dart';
import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/SizeConfig/FontSizeConstants.dart';
import '../../Constants/SizeConfig/Space Widgets.dart';

Widget columnWidgett(String number,String typeOfItem){

  return Column(
    children: <Widget>[
      textWidgetWithoutColor(
          number,
          FontFamilyConstants
              .montserrat,
          FontSizeConstants
              .fontsize15,
          FontWeight.normal),
      const VerticalSpace(0.7),
      textWidgetWithoutColor(
          typeOfItem,
          FontFamilyConstants
              .montserrat,
          FontSizeConstants
              .fontsize10,
          FontWeight.normal)
    ],
  );
}