import 'package:flutter/material.dart';
 import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/StringsAllProject.dart';

import '../../Constants/Colors.dart';
import '../../Constants/FontFamilyConstants.dart';
import '../../Constants/My Icons.dart';
import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/SizeConfig/FontSizeConstants.dart';
import '../../Constants/SizeConfig/Space Widgets.dart';

Widget buildFoodCard(
    String imgPath, String foodName, double price, int calCount, bool hasMilk) {
  return Padding(
    padding: EdgeInsets.only(
        top: SizeConfig.defaultSize! * 0.8,
        left: SizeConfig.defaultSize! * 1,
        bottom: SizeConfig.defaultSize! * 1),
    child: Container(
      decoration: BoxDecoration(
          color: Color_Const.white,
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * .8),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 3.0,
                spreadRadius: 3.0)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.defaultSize! * 1.5,
                    right: SizeConfig.defaultSize! * 1.5,
                    top: SizeConfig.defaultSize! * 1,
                    bottom: SizeConfig.defaultSize! * 1),
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                  height: SizeConfig.defaultSize! * 10,
                  width: SizeConfig.defaultSize! * 10,
                ),
              ),
              Positioned(
                  top: SizeConfig.defaultSize! * 9,
                  left: SizeConfig.defaultSize! * 7,
                  child: hasMilk
                      ? Container(
                          height: SizeConfig.defaultSize! * 1.5,
                          width: SizeConfig.defaultSize! * 6,
                          decoration: BoxDecoration(
                            color: Color_Const.white,
                            border: Border.all(
                                color: Color_Const.lPink,
                                style: BorderStyle.solid,
                                width: 0.25),
                            borderRadius: BorderRadius.circular(
                                SizeConfig.defaultSize! * 1),
                          ),
                          child: Center(
                            child: textWidget(
                                AllStringsConstants.withAddMilk,
                                FontFamilyConstants.montserrat,
                                Color_Const.lPink,
                                FontSizeConstants.fontsize10,
                                FontWeight.normal),
                          ),
                        )
                      : Container())
            ],
          ),
          Container(
            height: SizeConfig.defaultSize! * 1.5,
            width: SizeConfig.defaultSize! * 12,
            padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 0.4),
            child: textWidget(
                foodName,
                FontFamilyConstants.montserrat,
                Color_Const.darkkred,
                FontSizeConstants.fontsize15,
                FontWeight.normal),
          ),
          const VerticalSpace(0.5),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 0.4),
            child: textWidget(
                '\$' + price.toString(),
                FontFamilyConstants.montserrat,
                Color_Const.lPink,
                FontSizeConstants.fontsize15,
                FontWeight.normal),
          ),
          const VerticalSpace(0.5),
          Padding(
              padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 0.4),
              child: Row(
                children: <Widget>[
                  Icon(MyIcons.account_box,
                      color: Color_Const.lPink,
                      size: SizeConfig.defaultSize! * 1.5),
                  const HorizintalSpace(0.5),
                  textWidget(
                      calCount.toString() + AllStringsConstants.calFood,
                      FontFamilyConstants.montserrat,
                      Color_Const.grey,
                      FontSizeConstants.fontsize13,
                      FontWeight.normal),
                ],
              ))
        ],
      ),
    ),
  );
}
