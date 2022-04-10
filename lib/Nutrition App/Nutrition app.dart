import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/FontFamilyConstants.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Icon%20Button%20Widget.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Dimensions.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/FontSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/IconSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Space%20Widgets.dart';
import 'package:test_app_nabeeh/Constants/StringsAllProject.dart';

import '../Constants/Colors.dart';
import '../Constants/My Icons.dart';
import '../Constants/PathImageConstants.dart';
import 'NutritionDetails.dart';
import 'Widgets/ContainerWidget.dart';
import 'Widgets/FoodItems.dart';

class NutritionApp extends StatefulWidget {
  const NutritionApp({Key? key}) : super(key: key);

  @override
  _NutritionAppState createState() => _NutritionAppState();
}

class _NutritionAppState extends State<NutritionApp> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    DimensionsConstants().init(context);
    FontSizeConstants().init(context);
    IconSizeConstants().init(context);
    return Scaffold(
      backgroundColor: Color_Const.LightBlue,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.defaultSize! * 1.5,
                left: SizeConfig.defaultSize! * 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                iconButtonWidget(MyIcons.arrowback, Color_Const.white,
                    IconSizeConstants.iconSize13, () {}),
                Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        iconButtonWidget(MyIcons.filterList, Color_Const.white,
                            IconSizeConstants.iconSize13, () {}),
                        iconButtonWidget(MyIcons.Menu, Color_Const.white,
                            IconSizeConstants.iconSize13, () {})
                      ],
                    ))
              ],
            ),
          ),
          const VerticalSpace(2.3),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 4.2),
            child: Row(
              children: <Widget>[
                textWidget(
                    'Healthy',
                    FontFamilyConstants.montserrat,
                    Color_Const.white,
                    FontSizeConstants.fontsize25,
                    FontWeight.bold),
                const HorizintalSpace(1),
                textWidget(
                    'Food',
                    FontFamilyConstants.montserrat,
                    Color_Const.white,
                    FontSizeConstants.fontsize25,
                    FontWeight.normal)
              ],
            ),
          ),
          const VerticalSpace(4),
          Container(
            height: SizeConfig.screenHeight! - 185.0,
            decoration: BoxDecoration(
              color: Color_Const.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(DimensionsConstants.dimensions70)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize! * 2.5,
                  right: SizeConfig.defaultSize! * 2),
              children: <Widget>[
                Padding(
                    padding:
                        EdgeInsets.only(top: SizeConfig.defaultSize! * 4.5),
                    child: SizedBox(
                        height: SizeConfig.screenHeight! - 300.0,
                        child: ListView.builder(
                          itemBuilder: (((context, index) {
                            return buildFoodItems(
                                AllStringsConstants.foodItems42[index]['image'],
                                AllStringsConstants.foodItems42[index]
                                    ['foodName'],
                                AllStringsConstants.foodItems42[index]['price'],
                                context);
                          })),
                          itemCount: AllStringsConstants.foodItems42.length,
                        ))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    containerWidget(
                      Center(
                        child: Icon(MyIcons.search, color: Color_Const.black),
                      ),
                    ),
                    containerWidget(
                      Center(
                        child: Icon(MyIcons.shoppingbasket,
                            color: Color_Const.black),
                      ),
                    ),
                    containerWidget(
                      Center(
                          child: textWidget(
                              'Checkout',
                              FontFamilyConstants.montserrat,
                              Color_Const.black,
                              FontSizeConstants.fontsize15,
                              FontWeight.normal)),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
