import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Restaurant%20Reviews/Widget/TabBarWidget.dart';
import '../Constants/FontFamilyConstants.dart';
import '../Constants/FontSizeConstants.dart';
import '../Constants/My Icons.dart';
import '../Constants/PathImageConstants.dart';
import '../Constants/Size_Config.dart';
import '../Constants/Space Widgets.dart';
import '../Constants/StringsAllProject.dart';
import 'Restaurant List.dart';
import 'Widget/ColumnWidget.dart';

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
                    MyIcons.Location,
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
            width: SizeConfig.screenWidth,
            color: Colors.grey.withOpacity(0.05),
            padding: EdgeInsets.only(
                top: SizeConfig.defaultSize! * 3.1,
                bottom: SizeConfig.defaultSize! * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                columnWidget(AllStringsConstants.numberOfFollowerResturantViews,
                    AllStringsConstants.followersWordResturantViews),
                columnWidget(
                    AllStringsConstants.numberOfFollowingResturantViews,
                    AllStringsConstants.followingWordResturantViewsTabBar),
                columnWidget(
                    AllStringsConstants.numberOfTestMakerResturantViews,
                    AllStringsConstants.testMakerWordResturantViewsTabBar),
              ],
            ),
          ),
          tabBarWidget(tabController),
          const VerticalSpace(1),
          SizedBox(
              height:
                  SizeConfig.defaultSize! * (SizeConfig.screenHeight! - 450.0),
              child: TabBarView(
                controller: tabController,
                children: const <Widget>[
                  MyRestaurantsList(),
                  MyRestaurantsList()
                ],
              ))
        ],
      ),
    );
  }
}
