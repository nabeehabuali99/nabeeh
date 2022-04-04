import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';

import '../Constants/FontFamilyConstants.dart';
import '../Constants/FontSizeConstants.dart';
import '../Constants/PathImageConstants.dart';
import '../Constants/Size_Config.dart';
import '../Constants/Space Widgets.dart';
import '../Constants/StringsAllProject.dart';

class RestaurantProfile extends StatefulWidget {
  const RestaurantProfile({Key? key}) : super(key: key);

  @override
  _RestaurantProfileState createState() => _RestaurantProfileState();
}

class _RestaurantProfileState extends State<RestaurantProfile>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 2),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: SizeConfig.defaultSize! * 10,
                    width: SizeConfig.defaultSize! * 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            SizeConfig.defaultSize! * 5.1),
                        image: const DecorationImage(
                            image: AssetImage(PathConstants.chrisImage),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Positioned(
                left: SizeConfig.defaultSize! * 23.0,
                top: SizeConfig.defaultSize! * 7.5,
                child: Container(
                  height: SizeConfig.defaultSize! * 2.5,
                  width: SizeConfig.defaultSize! * 2.5,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(SizeConfig.defaultSize! * 1.2),
                      color: Color_Const.white),
                  child: Icon(
                    Icons.fastfood,
                    color: Color_Const.red,
                    size: SizeConfig.defaultSize! *1.5,
                  ),
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              const VerticalSpace(2.1),
              textWidget(
                  AllStringsConstants.personNameResturantViews,
                  FontFamilyConstants.montserrat,
                  Color_Const.darkBlue,
                  FontSizeConstants.fontsize20,
                  FontWeight.normal),
              const VerticalSpace(1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Color_Const.grey,
                  ),
                  textWidget(
                      AllStringsConstants.locationPersonResturantViews,
                      FontFamilyConstants.montserrat,
                      Color_Const.grey,
                      FontSizeConstants.fontsize15,
                      FontWeight.normal)
                ],
              )
            ],
          ),
          const VerticalSpace(1.5),
          Container(
            height: SizeConfig.defaultSize! * 10,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.05),
            padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 3.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    textWidget(
                        '121k',
                        FontFamilyConstants.montserrat,
                        Color_Const.red,
                        FontSizeConstants.fontsize15,
                        FontWeight.normal),
                    textWidget(
                        'Followers',
                        FontFamilyConstants.montserrat,
                        Color_Const.grey,
                        FontSizeConstants.fontsize15,
                        FontWeight.normal)
                  ],
                ),
                Column(
                  children: <Widget>[
                    textWidget(
                        '152',
                        FontFamilyConstants.montserrat,
                        Color_Const.red,
                        FontSizeConstants.fontsize15,
                        FontWeight.normal),
                    textWidget(
                        'Following',
                        FontFamilyConstants.montserrat,
                        Color_Const.grey,
                        FontSizeConstants.fontsize15,
                        FontWeight.normal)
                  ],
                ),
                Column(
                  children: <Widget>[
                    textWidget(
                        '455',
                        FontFamilyConstants.montserrat,
                        Color_Const.red,
                        FontSizeConstants.fontsize15,
                        FontWeight.normal),
                    textWidget(
                        'Taste Maker',
                        FontFamilyConstants.montserrat,
                        Color_Const.grey,
                        FontSizeConstants.fontsize15,
                        FontWeight.normal),
                  ],
                )
              ],
            ),
          ),
          TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color_Const.ddarkBlue,
            isScrollable: true,
            unselectedLabelColor: Color_Const.darkWhite,
            tabs: <Widget>[
              Tab(
                child: textWidgetWithoutColor(
                    AllStringsConstants.ResturantViewsNames,
                    FontFamilyConstants.montserrat,
                    FontSizeConstants.fontsize20,
                    FontWeight.normal),
              ),
              Tab(
                child: textWidgetWithoutColor(
                    'My Wishlist',
                    FontFamilyConstants.montserrat,
                    FontSizeConstants.fontsize20,
                    FontWeight.normal),
              ),
            ],
          ),
          const VerticalSpace(1),
          Container(
              height:
                  SizeConfig.defaultSize! * (SizeConfig.screenHeight! - 450.0),
              child: TabBarView(
                controller: tabController,
                children: <Widget>[],
              ))
        ],
      ),
    );
  }
}
