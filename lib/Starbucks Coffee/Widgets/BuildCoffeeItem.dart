import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/FontFamilyConstants.dart';
import 'package:test_app_nabeeh/Constants/FontSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Icon%20Button%20Widget.dart';
import 'package:test_app_nabeeh/Constants/Space%20Widgets.dart';

import '../../Constants/Colors.dart';
import '../../Constants/My Icons.dart';
import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/Size_Config.dart';

buildCoffeeItem(
    String imgPath, String productName, String productType, String price) {
  return Padding(
    padding: EdgeInsets.all(SizeConfig.defaultSize! * 1),
    child: Container(
        height: SizeConfig.defaultSize! * 18,
        width: SizeConfig.defaultSize! * 18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 1.5),
            color: Color_Const.white,
            boxShadow: [
              BoxShadow(
                  color: Color_Const.grey.withOpacity(0.3),
                  spreadRadius: 4.0,
                  blurRadius: 4.0)
            ]),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: SizeConfig.defaultSize! * 16,
                  width: SizeConfig.defaultSize! * 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft:
                              Radius.circular(SizeConfig.defaultSize! * 1.5),
                          topRight:
                              Radius.circular(SizeConfig.defaultSize! * 1.5)),
                      image: DecorationImage(
                          image: AssetImage(imgPath), fit: BoxFit.cover)),
                ),
                const VerticalSpace(3),
                Padding(
                  padding: EdgeInsets.all(SizeConfig.defaultSize! * 1),
                  child: textWidgetWithoutColor(
                    productName,
                    FontFamilyConstants.montserrat,
                    FontSizeConstants.fontsize15,
                    FontWeight.bold,
                  ),
                ),
                const VerticalSpace(0.5),
                Padding(
                  padding: EdgeInsets.all(SizeConfig.defaultSize! * 1),
                  child: textWidget(
                      productType,
                      FontFamilyConstants.montserrat,
                      Color_Const.grey,
                      FontSizeConstants.fontsize15,
                      FontWeight.normal),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize! * 1,
                        right: SizeConfig.defaultSize! * 1),
                    child: Container(
                      height: SizeConfig.defaultSize! * 0.4,
                      color: Color_Const.grey.withOpacity(0.4),
                    )),
                const VerticalSpace(0.5),
                Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.defaultSize! * 1,
                    right: SizeConfig.defaultSize! * 1,
                    bottom: SizeConfig.defaultSize! * 1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      textWidgetWithoutColor(
                          '\$' + price,
                          FontFamilyConstants.montserrat,
                          FontSizeConstants.fontsize20,
                          FontWeight.bold),
                      Container(
                        height: SizeConfig.defaultSize! * 4,
                        width: SizeConfig.defaultSize! * 4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                SizeConfig.defaultSize! * 1.5),
                            color: Colors.grey.withOpacity(0.2)),
                        child: Center(
                          child: iconButtonWidget(MyIcons.add, Color_Const.grey,
                              SizeConfig.defaultSize! * 1.5, () {}),
                        ),
                      ),
                      const VerticalSpace(2),
                    ],
                  ),
                )
              ],
            )
          ],
        )),
  );
}
