import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';
import '../../Constants/FontFamilyConstants.dart';
import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/SizeConfig/FontSizeConstants.dart';

Widget tapBarWidgets(TabController tabController) {
  return TabBar(
    controller: tabController,
    indicatorColor: Color_Const.transparent,
    labelColor: Color_Const.black,
    unselectedLabelColor: Color_Const.grey.withOpacity(0.6),
    isScrollable: true,
    tabs: <Widget>[
      Tab(
        child: textWidgetWithoutColor('Avocado', FontFamilyConstants.quicksand,
            FontSizeConstants.fontsize15, FontWeight.bold),
      ),
      Tab(
        child: textWidgetWithoutColor('Grapes', FontFamilyConstants.quicksand,
            FontSizeConstants.fontsize15, FontWeight.bold),
      ),
      Tab(
        child: textWidgetWithoutColor('Apple', FontFamilyConstants.quicksand,
            FontSizeConstants.fontsize15, FontWeight.bold),
      ),
      Tab(
        child: textWidgetWithoutColor(
            'Grapefruit',
            FontFamilyConstants.quicksand,
            FontSizeConstants.fontsize15,
            FontWeight.bold),
      )
    ],
  );
}
