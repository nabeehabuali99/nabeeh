import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Dimensions.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/FontSizeConstants.dart';

import '../../Constants/Colors.dart';
import '../../Constants/FontFamilyConstants.dart';
import '../../Constants/SizeConfig/Size_Config.dart';
import '../../Constants/SizeConfig/Space Widgets.dart';

Widget buildFoodItem(String imgPath, String discount, String price) {
  return Padding(
    padding: EdgeInsets.all(SizeConfig.defaultSize! * 1),
    child: Stack(
      children: <Widget>[
        SizedBox(
          height: SizeConfig.screenHeight! / 3,
          width: SizeConfig.screenWidth! / 3,
        ),
        Positioned(
            left: SizeConfig.defaultSize! * 1.5,
            child: Container(
              height: SizeConfig.defaultSize! * 2.2,
              width: SizeConfig.defaultSize! * 2.2,
              decoration: BoxDecoration(
                  color: Color_Const.DarkOrange,
                  borderRadius:
                      BorderRadius.circular(DimensionsConstants.dimensions7)),
            )),
        Positioned(
            top: SizeConfig.defaultSize! * 0.7,
            child: Container(
                height: SizeConfig.defaultSize! * 11,
                width: SizeConfig.defaultSize! * 12.4,
                decoration: BoxDecoration(
                    color: Color_Const.GreenLight2,
                    borderRadius: BorderRadius.circular(
                        DimensionsConstants.dimensions11)),
                child: Column(children: [
                  const VerticalSpace(1),
                  Image.asset(
                    imgPath,
                    fit: BoxFit.cover,
                    height: SizeConfig.defaultSize! * 4,
                  ),
                  textWidget(
                      price,
                      FontFamilyConstants.quicksand,
                      Color_Const.white,
                      FontSizeConstants.fontsize15,
                      FontWeight.bold)
                ]))),
        Positioned(
          left: SizeConfig.defaultSize! * 1.5,
          child: Container(
            height: SizeConfig.defaultSize! *2,
            width: SizeConfig.defaultSize! * 2,
            decoration: BoxDecoration(
                color: Color_Const.DarkOrange,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(DimensionsConstants.dimensions7),
                    bottomRight:
                        Radius.circular(DimensionsConstants.dimensions7),
                    bottomLeft:
                        Radius.circular(DimensionsConstants.dimensions7))),
            child: Center(
              child: textWidget(
                  discount + '%',
                  FontFamilyConstants.quicksand,
                  Color_Const.white,
                  FontSizeConstants.fontsize10,
                  FontWeight.normal),
            ),
          ),
        ),
      ],
    ),
  );
}
