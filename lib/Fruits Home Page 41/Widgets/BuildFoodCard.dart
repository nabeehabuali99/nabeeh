import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/FontFamilyConstants.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/FontSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/StringsAllProject.dart';

import '../../Constants/Colors.dart';
import '../../Constants/SizeConfig/Dimensions.dart';
import '../../Constants/SizeConfig/Size_Config.dart';
import '../../Constants/SizeConfig/Space Widgets.dart';

Widget buildFoodCard(
    String imgPath, String price, String desc, Color cardColor) {
  return Padding(
    padding: EdgeInsets.all(SizeConfig.defaultSize! * 1.2),
    child: Container(
        height: SizeConfig.screenHeight! / 4,
        width: SizeConfig.screenWidth! / 3,
        decoration: BoxDecoration(
            color: cardColor,
            borderRadius:
                BorderRadius.circular(DimensionsConstants.dimensions15)),
        child: Column(children: [
          const VerticalSpace(1.5),
          Image.asset(imgPath,
              fit: BoxFit.cover, height: SizeConfig.screenHeight! / 7),
          const VerticalSpace(1),
          textWidget(price, FontFamilyConstants.quicksand, Color_Const.white,
              FontSizeConstants.fontsize20, FontWeight.normal),
          const VerticalSpace(1),
          Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.defaultSize! * 1,
                right: SizeConfig.defaultSize! * 1),
            child: textWidget(
                desc,
                FontFamilyConstants.quicksand,
                Color_Const.white,
                FontSizeConstants.fontsize13,
                FontWeight.normal),
          ),
          const VerticalSpace(1.5),
          InkWell(
              onTap: () {},
              child: Container(
                height: SizeConfig.screenHeight! / 18,
                width: SizeConfig.screenWidth! / 4,
                decoration: BoxDecoration(
                    color: Color_Const.GreenLight,
                    borderRadius: BorderRadius.circular(
                        DimensionsConstants.dimensions15)),
                child: Center(
                  child: textWidget(
                      AllStringsConstants.addToCartWordFruits41,
                      FontFamilyConstants.quicksand,
                      Color_Const.white,
                      FontSizeConstants.fontsize15,
                      FontWeight.normal),
                ),
              ))
        ])),
  );
}
