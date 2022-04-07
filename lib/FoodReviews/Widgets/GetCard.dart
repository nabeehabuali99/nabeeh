import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Dimensions.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/IconSizeConstants.dart';

import '../../Constants/Colors.dart';
import '../../Constants/FontFamilyConstants.dart';
import '../../Constants/My Icons.dart';
import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/SizeConfig/FontSizeConstants.dart';
import '../../Constants/SizeConfig/Size_Config.dart';
import '../../Constants/SizeConfig/Space Widgets.dart';

Widget getCard(String imgPath, String foodName) {
  return Padding(
    padding: EdgeInsets.only(
        left: SizeConfig.defaultSize! * 3,
        top: SizeConfig.defaultSize! *3,
        bottom: SizeConfig.defaultSize! * 3),
    child: Container(
        height: SizeConfig.defaultSize! *30,
        width: SizeConfig.defaultSize! *20,
        decoration: BoxDecoration(
            color: Color_Const.white,
            borderRadius: BorderRadius.circular(DimensionsConstants.dimensions11),
            boxShadow: [
              BoxShadow(
                  blurRadius: 3.0,
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3.0)
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: SizeConfig.defaultSize! * 12,
                width: SizeConfig.defaultSize! * 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(DimensionsConstants.dimensions11),
                        topRight:
                            Radius.circular(DimensionsConstants.dimensions11)),
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.all(SizeConfig.defaultSize! * 0.8),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: SizeConfig.defaultSize! * 4,
                    width: SizeConfig.defaultSize! * 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            DimensionsConstants.dimensions20),
                        color: Colors.white.withOpacity(0.5)),
                    child: Center(
                      child: Icon(MyIcons.Fav, color: Color_Const.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          const VerticalSpace(1),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 1.5),
            child: textWidgetWithoutColor(
              foodName,
              FontFamilyConstants.quicksand,
              FontSizeConstants.fontsize15,
              FontWeight.bold,
            ),
          ),
          const VerticalSpace(1),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 1.5),
            child: Row(
              children: <Widget>[
                textWidget(
                  'Breakfast',
                  FontFamilyConstants.quicksand,
                  Colors.grey.withOpacity(0.5),
                  10.0,
                  FontWeight.bold,
                ),
                const HorizintalSpace(1),
                textWidget(
                  'Light food',
                  FontFamilyConstants.quicksand,
                  Colors.grey.withOpacity(0.5),
                  FontSizeConstants.fontsize10,
                  FontWeight.bold,
                ),
              ],
            ),
          ),
          const VerticalSpace(1),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 1.5),
            child: Row(
              children: <Widget>[
                Icon(MyIcons.star,
                    color: Color_Const.yellow,
                    size: IconSizeConstants.iconSize15),
                Icon(MyIcons.star,
                    color: Color_Const.yellow,
                    size: IconSizeConstants.iconSize15),
                Icon(MyIcons.star,
                    color: Color_Const.yellow,
                    size: IconSizeConstants.iconSize15),
                Icon(MyIcons.star,
                    color: Color_Const.yellow,
                    size: IconSizeConstants.iconSize15),
                Icon(MyIcons.starborder,
                    color: Color_Const.grey,
                    size: IconSizeConstants.iconSize15),
                const HorizintalSpace(1),
                textWidgetWithoutColor(
                  '4.5',
                  FontFamilyConstants.quicksand,
                  FontSizeConstants.fontsize10,
                  FontWeight.bold,
                ),
              ],
            ),
          )
        ])),
  );
}
