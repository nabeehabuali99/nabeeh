
import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/StringsAllProject.dart';

import '../../Constants/Colors.dart';
import '../../Constants/FontFamilyConstants.dart';
import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/SizeConfig/FontSizeConstants.dart';

Widget tapBar( TabController  tabController ){
  return TabBar(
    controller: tabController,
    indicatorColor: Color_Const.darkgreen,
    labelColor: Color_Const.black,
    indicatorSize: TabBarIndicatorSize.label,
    unselectedLabelColor: Color_Const.grey.withOpacity(0.6),
    isScrollable: true,
    tabs: <Widget>[
      Tab(
        child: textWidgetWithoutColor(
            AllStringsConstants.nameOfTapBarFoodReviews1,
            FontFamilyConstants.montserrat,
            FontSizeConstants.fontsize15,
            FontWeight.bold),
      ),
      Tab(
        child: textWidgetWithoutColor(
            AllStringsConstants.nameOfTapBarFoodReviews2,
            FontFamilyConstants.montserrat,
            FontSizeConstants.fontsize15,
            FontWeight.bold),
      ),
      Tab(
        child: textWidgetWithoutColor(
            AllStringsConstants.nameOfTapBarFoodReviews3,
            FontFamilyConstants.montserrat,
            FontSizeConstants.fontsize15,
            FontWeight.bold),
      )
    ],
  );
}