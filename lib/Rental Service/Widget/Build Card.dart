import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';
import '../../Constants/FontFamilyConstants.dart';
import '../../Constants/PathImageConstants.dart';
import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/SizeConfig/Dimensions.dart';
import '../../Constants/SizeConfig/FontSizeConstants.dart';
import '../../Constants/SizeConfig/Size_Config.dart';
import '../../Constants/SizeConfig/Space Widgets.dart';
import 'Container ImageWidget.dart';

buildCardd(String name, String imgPath, String price, String desc) {
  return Padding(
    padding: EdgeInsets.all(SizeConfig.defaultSize! * 1),
    child: Container(
      height: SizeConfig.screenHeight! / 2.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DimensionsConstants.dimensions11),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 2.0,
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2.0)
          ]),
      child: Column(children: <Widget>[
        const VerticalSpace(1.5),
        Container(
          padding: EdgeInsets.only(
              left: SizeConfig.defaultSize! * 1,
              right: SizeConfig.defaultSize! * 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  child: Row(
                children: <Widget>[
                  containerImageWidget(
                      5.2, 7.5, imgPath, DimensionsConstants.dimensions20),
                  const HorizintalSpace(0.5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      textWidgetWithoutColor(
                          name,
                          FontFamilyConstants.montserrat,
                          FontSizeConstants.fontsize10,
                          FontWeight.bold),
                      const VerticalSpace(0.5),
                      textWidget(
                          '6 minutes ago',
                          FontFamilyConstants.montserrat,
                          Color_Const.grey,
                          FontSizeConstants.fontsize10,
                          FontWeight.normal)
                    ],
                  )
                ],
              )),
              textWidget(
                  '\$' + price + ' million',
                  FontFamilyConstants.montserrat,
                  Color_Const.org,
                  FontSizeConstants.fontsize20,
                  FontWeight.normal)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.defaultSize! * 1,
              right: SizeConfig.defaultSize! * 1,
              top: SizeConfig.defaultSize! * 0.8),
          child: textWidgetWithoutColor(desc, FontFamilyConstants.montserrat,
              FontSizeConstants.fontsize15, FontWeight.normal),
        ),
        Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.defaultSize! * 1,
                right: SizeConfig.defaultSize! * 2,
                top: SizeConfig.defaultSize! * 1),
            child: Row(
              children: <Widget>[
                containerImageWidget(15, 2.5, PathConstants.pic11Image,
                    DimensionsConstants.dimensions7),
                const HorizintalSpace(0.5),
                Column(children: <Widget>[
                  containerImageWidget(7.5, 2.5, PathConstants.pic11Image,
                      DimensionsConstants.dimensions7),
                  const VerticalSpace(0.2),
                  containerImageWidget(7.5, 2.5, PathConstants.pic11Image,
                      DimensionsConstants.dimensions7),
                ])
              ],
            ))
      ]),
    ),
  );
}
