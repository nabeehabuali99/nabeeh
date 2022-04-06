import 'dart:html';

import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/FontFamilyConstants.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Icon%20Button%20Widget.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Dimensions.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/FontSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Space%20Widgets.dart';
import '../Constants/Colors.dart';
import '../Constants/My Icons.dart';
import '../Constants/PathImageConstants.dart';
import '../Constants/SizeConfig/IconSizeConstants.dart';

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
        appBar: AppBar(
          title: textWidget(
              'Rent house',
              FontFamilyConstants.montserrat,
              Color_Const.black,
              FontSizeConstants.fontsize20,
              FontWeight.normal),
          centerTitle: true,
          leading: iconButtonWidget(
              MyIcons.arrow, Color_Const.black, IconSizeConstants.iconSize15,
              () {
            Navigator.of(context).pop();
          }),
          backgroundColor: Color_Const.black,
          elevation: 0.0,
        ),
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
                                                  'Kra water village',
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
                                              Column(
                                                children: <Widget>[
                                                  textWidget(
                                                      '18',
                                                      FontFamilyConstants
                                                          .montserrat,
                                                      Color_Const.black,
                                                      FontSizeConstants
                                                          .fontsize20,
                                                      FontWeight.bold),
                                                  const VerticalSpace(0.7),
                                                  textWidgetWithoutColor(
                                                      'Sell',
                                                      FontFamilyConstants
                                                          .montserrat,
                                                      FontSizeConstants
                                                          .fontsize10,
                                                      FontWeight.normal)
                                                ],
                                              ),
                                              const HorizintalSpace(3),
                                              Column(
                                                children: <Widget>[
                                                  textWidgetWithoutColor(
                                                      '74',
                                                      FontFamilyConstants
                                                          .montserrat,
                                                      FontSizeConstants
                                                          .fontsize15,
                                                      FontWeight.bold),
                                                  const VerticalSpace(0.7),
                                                  textWidgetWithoutColor(
                                                      'Rent',
                                                      FontFamilyConstants
                                                          .montserrat,
                                                      FontSizeConstants
                                                          .fontsize10,
                                                      FontWeight.normal)
                                                ],
                                              ),
                                              const HorizintalSpace(3),
                                              Column(
                                                children: <Widget>[
                                                  textWidgetWithoutColor(
                                                      '36',
                                                      FontFamilyConstants
                                                          .montserrat,
                                                      FontSizeConstants
                                                          .fontsize15,
                                                      FontWeight.bold),
                                                  const VerticalSpace(0.7),
                                                  textWidgetWithoutColor(
                                                      'Sublet',
                                                      FontFamilyConstants
                                                          .montserrat,
                                                      FontSizeConstants
                                                          .fontsize10,
                                                      FontWeight.normal)
                                                ],
                                              )
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
            const VerticalSpace(1),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize! * 1,
                  right: SizeConfig.defaultSize! * 1),
              child: Container(
                width: SizeConfig.screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    textWidgetWithoutColor(
                        'Rent',
                        FontFamilyConstants.montserrat,
                        FontSizeConstants.fontsize20,
                        FontWeight.bold),
                    textWidget(
                        'More',
                        FontFamilyConstants.montserrat,
                        Color_Const.grey,
                        FontSizeConstants.fontsize15,
                        FontWeight.normal)
                  ],
                ),
              ),
            ),
            const VerticalSpace(1),
            Container(
              height: SizeConfig.screenHeight! / 2,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  _buildCard('Gounuli', 'assets/chris.png', '3.7',
                      'The newly decorated new house is well furnished and has a beautiful environment'),
                  _buildCard('Michelle', 'assets/hugh.png', '4.3',
                      'Country garden a villa want to add me')
                ],
              ),
            )
          ],
        ));
  }

  _buildCard(String name, String imgPath, String price, String desc) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.defaultSize! * 1),
      child: Container(
        height: SizeConfig.screenHeight! / 3,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(DimensionsConstants.dimensions11),
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
            width: MediaQuery.of(context).size.width - 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                  children: <Widget>[
                    Container(
                      height: SizeConfig.defaultSize! * 5.2,
                      width: SizeConfig.defaultSize! * 5.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              DimensionsConstants.dimensions20),
                          image: DecorationImage(
                              image: AssetImage(imgPath), fit: BoxFit.cover)),
                    ),
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
                  right: SizeConfig.defaultSize! * 1,
                  top: SizeConfig.defaultSize! * 1),
              child: Row(
                children: <Widget>[
                  Container(
                    height: SizeConfig.defaultSize! * 12.5,
                    width: (MediaQuery.of(context).size.width) / 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        image: const DecorationImage(
                            image: AssetImage('assets/pic11.png'),
                            fit: BoxFit.cover)),
                  ),
                  const HorizintalSpace(0.5),
                  Column(children: <Widget>[
                    Container(
                      height: SizeConfig.defaultSize! * 6,
                      width: (MediaQuery.of(context).size.width - 90.0) / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/pic11.png'),
                              fit: BoxFit.cover)),
                    ),
                    const VerticalSpace(0.5),
                    Container(
                      height: SizeConfig.defaultSize! * 6,
                      width: (MediaQuery.of(context).size.width - 90.0) / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/pic11.png'),
                              fit: BoxFit.cover)),
                    )
                  ])
                ],
              ))
        ]),
      ),
    );
  }
}
