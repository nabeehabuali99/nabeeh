import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/FontFamilyConstants.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Icon%20Button%20Widget.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/FontSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/IconSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Space%20Widgets.dart';

import '../../Constants/Colors.dart';
import '../../Constants/My Icons.dart';
import '../NutritionDetails.dart';

Widget buildFoodItems(
    String imgPath, String foodName, String price, BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(
          left: SizeConfig.defaultSize! * 1,
          right: SizeConfig.defaultSize! * 1,
          top: SizeConfig.defaultSize! * 1),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailsPage(
                    heroTag: imgPath, foodName: foodName, foodPrice: price)));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  child: Row(children: [
                Hero(
                    tag: imgPath,
                    child: Image(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                        height: SizeConfig.defaultSize! * 7.5,
                        width: SizeConfig.defaultSize! * 7.5)),
                const HorizintalSpace(1),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  textWidgetWithoutColor(
                      foodName,
                      FontFamilyConstants.montserrat,
                      FontSizeConstants.fontsize15,
                      FontWeight.bold),
                  textWidget(
                      price,
                      FontFamilyConstants.montserrat,
                      Color_Const.grey,
                      FontSizeConstants.fontsize15,
                      FontWeight.normal)
                ])
              ])),
              iconButtonWidget(MyIcons.add, Color_Const.black,
                  IconSizeConstants.iconSize13, () {})
            ],
          )));
}
