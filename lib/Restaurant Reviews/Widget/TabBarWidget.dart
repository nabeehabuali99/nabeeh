import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';
import '../../Constants/FontFamilyConstants.dart';
 import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/SizeConfig/FontSizeConstants.dart';
import '../../Constants/StringsAllProject.dart';

Widget tabBarWidget(TabController tabController){

  return TabBar(
    controller: tabController,
    indicatorColor: Colors.transparent,
    labelColor: Color_Const.ddarkBlue,
    isScrollable: true,
    unselectedLabelColor: Color_Const.darkWhite,
    tabs: <Widget>[
      Tab(
        child: textWidgetWithoutColor(
            AllStringsConstants.followersWordResturantViews,
            FontFamilyConstants.montserrat,
            FontSizeConstants.fontsize20,
            FontWeight.normal),
      ),
      Tab(
        child: textWidgetWithoutColor(
            AllStringsConstants.wishListWordResturantViewsTabBar,
            FontFamilyConstants.montserrat,
            FontSizeConstants.fontsize20,
            FontWeight.normal),
      ),
    ],
  );
}