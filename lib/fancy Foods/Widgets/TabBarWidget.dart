import 'package:flutter/material.dart';

import '../../Constants/FontFamilyConstants.dart';
 import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/SizeConfig/FontSizeConstants.dart';

Widget tabWidget(String typefood){

  return Tab(
    child: textWidgetWithoutColor(typefood,
        FontFamilyConstants.montserrat,  FontSizeConstants.fontsize15, FontWeight.normal),
  );
}