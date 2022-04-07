import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/FontFamilyConstants.dart';
import 'package:test_app_nabeeh/Constants/PathImageConstants.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Icon%20Button%20Widget.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/StringsAllProject.dart';

import '../Constants/My Icons.dart';
import '../Constants/SizeConfig/FontSizeConstants.dart';
import 'Widgets/BuildCoffeeItem.dart';
import 'Widgets/BuildItem.dart';

class HomeStarbucks extends StatefulWidget {
  const HomeStarbucks({Key? key}) : super(key: key);

  @override
  _HomeStarbucksState createState() => _HomeStarbucksState();
}

class _HomeStarbucksState extends State<HomeStarbucks> {
  @override
  Widget build(BuildContext context) {
    FontSizeConstants().init(context);
    SizeConfig().init(context);
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 1.5),
              child: iconButtonWidget(MyIcons.arrowback, Color_Const.black,
                  SizeConfig.defaultSize! * 2, () {
                Navigator.of(context).pop();
              }),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize! * 2,
                  right: SizeConfig.defaultSize! * 2),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: SizeConfig.defaultSize! * 5.2,
                    width: SizeConfig.defaultSize! * 5.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            SizeConfig.defaultSize! * 2.1),
                        color: Colors.transparent),
                  ),
                  Container(
                    height: SizeConfig.defaultSize! * 3.7,
                    width: SizeConfig.defaultSize! * 3.7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color_Const.darkGreen),
                    child: Center(
                      child: Icon(
                        MyIcons.shoppingbasket,
                        color: Color_Const.white,
                        size: SizeConfig.defaultSize! * 2,
                      ),
                    ),
                  ),
                  Positioned(
                    top: SizeConfig.defaultSize! * 2.6,
                    right: SizeConfig.defaultSize! * 3.3,
                    child: Container(
                      height: SizeConfig.defaultSize! * 1.9,
                      width: SizeConfig.defaultSize! * 1.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              SizeConfig.defaultSize! * 1),
                          color: Color_Const.red),
                      child: Center(
                        child: textWidget(
                            '8',
                            FontFamilyConstants.montserrat,
                            Color_Const.white,
                            FontSizeConstants.fontsize15,
                            FontWeight.normal),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(SizeConfig.screenHeight! / 20),
          child: textWidgetWithoutColor(
              AllStringsConstants.nameOfCaffeh,
              FontFamilyConstants.montserrat,
              FontSizeConstants.fontsize20,
              FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.defaultSize! * 1.5,
              top: SizeConfig.defaultSize! * 1.5,
              bottom: SizeConfig.defaultSize! * 1.5),
          child: Container(
            height: SizeConfig.screenHeight! / 3.5,
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return BuildItem(
                    productName: AllStringsConstants
                        .pruductDetailSturbucs[index]['type'],
                    count: AllStringsConstants.pruductDetailSturbucs[index]
                        ['count']);
              }),
              itemCount: AllStringsConstants.pruductDetailSturbucs.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.defaultSize! * 2,
              top: SizeConfig.defaultSize! * 2,
              bottom: SizeConfig.defaultSize! * 18),
          child: Container(
            height: SizeConfig.screenHeight! / 1.0,
            child: ListView.builder(
              itemBuilder: ((contexr, index) {
                return buildCoffeeItem(
                    PathConstants.coffeeImage,
                    AllStringsConstants.pruductinfoSturbucs[index]['type'],
                    AllStringsConstants.pruductinfoSturbucs[index]['info'],
                    AllStringsConstants.pruductinfoSturbucs[index]['price']);
              }),
              itemCount: AllStringsConstants.pruductinfoSturbucs.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ],
    ));
  }
}
