import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/FontSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';

import '../../Constants/Colors.dart';
import '../../Constants/FontFamilyConstants.dart';
import '../../Constants/My Icons.dart';
import '../../Constants/Size_Config.dart';
import '../../Constants/Space Widgets.dart';

buildCard(String restaurantName, String type, String date, String rating,
    String imgPath) {

  return Container(
    padding: EdgeInsets.all(SizeConfig.defaultSize! * 0.8),
    height: SizeConfig.defaultSize! * 25,
    width: SizeConfig.defaultSize! * 14,
    decoration: BoxDecoration(color: Color_Const.white, boxShadow: [
      BoxShadow(
          blurRadius: 3.0,
          spreadRadius: 3.0,
          color: Color_Const.grey.withOpacity(0.2))
    ]),
    child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: SizeConfig.defaultSize! *12,
              width: SizeConfig.defaultSize! * 34,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: SizeConfig.defaultSize! * 25,
              left: SizeConfig.defaultSize! * 30,
              child: Container(
                  height: SizeConfig.defaultSize! * 2,
                  width: SizeConfig.defaultSize! * 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      color: Color_Const.yellow),
                  child: Row(
                    children: <Widget>[
                      const HorizintalSpace(0.1),
                      textWidget(
                          rating,
                          FontFamilyConstants.montserrat,
                          Color_Const.red,
                          FontSizeConstants.fontsize10,
                          FontWeight.normal),
                      Icon(
                        MyIcons.star,
                        color: Color_Const.red,
                        size: SizeConfig.defaultSize! * 1,
                      )
                    ],
                  )),
            )
          ],
        ),
        const VerticalSpace(1),
        textWidget(
            restaurantName,
            FontFamilyConstants.montserrat,
            Color_Const.darkBlue,
            FontSizeConstants.fontsize15,
            FontWeight.normal),
        const VerticalSpace(1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            textWidget(type, FontFamilyConstants.montserrat, Color_Const.grey,
                FontSizeConstants.fontsize10, FontWeight.normal),
            textWidget(date, FontFamilyConstants.montserrat, Color_Const.grey,
                FontSizeConstants.fontsize10, FontWeight.normal),
          ],
        )
      ],
    ),
  );
}
