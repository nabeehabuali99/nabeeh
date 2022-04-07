import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/FontFamilyConstants.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Dimensions.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/FontSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Space%20Widgets.dart';
import 'package:test_app_nabeeh/Constants/StringsAllProject.dart';

import '../Constants/Colors.dart';
import '../Constants/My Icons.dart';
import '../Constants/PathImageConstants.dart';
import '../Constants/SizeConfig/IconSizeConstants.dart';
import '../Restaurant Reviews/Widget/RowWidget.dart';
import 'Widget/AppBarWidget.dart';
import 'Widget/Build Card.dart';
import 'Widget/ColumnWidget.dart';

class RentalHome extends StatefulWidget {
  const RentalHome({Key? key}) : super(key: key);

  @override
  State<RentalHome> createState() => _RentalHomeState();
}

List allImgs = [PathConstants.pic11Image, PathConstants.pic22Image];

class _RentalHomeState extends State<RentalHome> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    IconSizeConstants().init(context);
    FontSizeConstants().init(context);
    DimensionsConstants().init(context);
    return Scaffold(
        appBar: const AppBarWidget(),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                CarouselSlider(
                  items: allImgs.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Stack(
                          children: <Widget>[
                            Container(
                                height: SizeConfig.screenHeight! / 3.5,
                                color: Color_Const.transparent),
                            Padding(
                              padding: EdgeInsets.all(
                                  DimensionsConstants.dimensions8),
                              child: Container(
                                height: SizeConfig.screenHeight! / 2.5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        DimensionsConstants.dimensions7),
                                    image: DecorationImage(
                                        image: AssetImage(i),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Positioned(
                              left: SizeConfig.screenHeight! / 20,
                              top: SizeConfig.screenHeight! / 8,
                              child: Container(
                                height: SizeConfig.screenHeight! / 5,
                                width: SizeConfig.screenWidth! / 1.6,
                                decoration: BoxDecoration(
                                    color: Color_Const.white.withOpacity(0.8),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 1.0,
                                          color:
                                              Color_Const.grey.withOpacity(0.4),
                                          blurRadius: 1.0),
                                    ],
                                    borderRadius: BorderRadius.circular(
                                        DimensionsConstants.dimensions7)),
                                child: Container(
                                  width: SizeConfig.screenWidth! / 1.7,
                                  padding: EdgeInsets.only(
                                      left: SizeConfig.defaultSize! * 1,
                                      right: SizeConfig.defaultSize! * 1),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          const VerticalSpace(1.5),
                                          Row(
                                            children: <Widget>[
                                              textWidget(
                                                  AllStringsConstants
                                                      .nameOfSmallCardPostRental,
                                                  FontFamilyConstants
                                                      .montserrat,
                                                  Color_Const.black,
                                                  FontSizeConstants.fontsize15,
                                                  FontWeight.normal)
                                            ],
                                          ),
                                          const VerticalSpace(1.5),
                                          Row(
                                            children: <Widget>[
                                              columnWidgett(
                                                  AllStringsConstants
                                                          .itemsOfRental[0]
                                                      ['value'],
                                                  AllStringsConstants
                                                          .itemsOfRental[0]
                                                      ['type']),
                                              const HorizintalSpace(3),
                                              columnWidgett(
                                                  AllStringsConstants
                                                          .itemsOfRental[1]
                                                      ['value'],
                                                  AllStringsConstants
                                                          .itemsOfRental[1]
                                                      ['type']),
                                              const HorizintalSpace(3),
                                              columnWidgett(
                                                  AllStringsConstants
                                                          .itemsOfRental[2]
                                                      ['value'],
                                                  AllStringsConstants
                                                      .itemsOfRental[2]['type'])
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>[
                                          const VerticalSpace(1.5),
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                MyIcons.star,
                                                color: Color_Const.amber,
                                                size: IconSizeConstants
                                                    .iconSize15,
                                              ),
                                              textWidget(
                                                  '4.9',
                                                  FontFamilyConstants
                                                      .montserrat,
                                                  Color_Const.amber,
                                                  FontSizeConstants.fontsize15,
                                                  FontWeight.bold),
                                            ],
                                          ),
                                          const VerticalSpace(2.1),
                                          Container(
                                            height:
                                                SizeConfig.defaultSize! * 3.1,
                                            width:
                                                SizeConfig.defaultSize! * 3.1,
                                            decoration: BoxDecoration(
                                                color: Color_Const.darkBluee,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        DimensionsConstants
                                                            .dimensions11)),
                                            child: Center(
                                              child: Icon(MyIcons.send,
                                                  color: Color_Const.white,
                                                  size: IconSizeConstants
                                                      .iconSize15),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(initialPage: 0),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize! * 1,
                  right: SizeConfig.defaultSize! * 1),
              child:
                  Container(width: SizeConfig.screenWidth, child: rowWidgets()),
            ),
            const VerticalSpace(1),
            SizedBox(
              height: SizeConfig.screenHeight! / 1.5,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  buildCardd(
                      AllStringsConstants.nameOfmakePostRental1,
                      PathConstants.chrisImage,
                      AllStringsConstants.ratingOfPostRental1,
                      AllStringsConstants.descrptionOfPostRental1),
                  buildCardd(
                      AllStringsConstants.nameOfmakePostRental2,
                      PathConstants.hughImage,
                      AllStringsConstants.ratingOfPostRental2,
                      AllStringsConstants.descrptionOfPostRental2)
                ],
              ),
            )
          ],
        ));
  }
}
