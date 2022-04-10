import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Dimensions.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/FontSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/IconSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Space%20Widgets.dart';
import 'package:test_app_nabeeh/Constants/StringsAllProject.dart';
import 'package:test_app_nabeeh/FoodReviews/FoodListReviews.dart';
import '../Constants/FontFamilyConstants.dart';
import '../Constants/PathImageConstants.dart';
import 'Widgets/TapBar Widget.dart';

class HomeFoodReviews extends StatefulWidget {
  const HomeFoodReviews({Key? key}) : super(key: key);

  @override
  _HomeFoodReviewsState createState() => _HomeFoodReviewsState();
}

class _HomeFoodReviewsState extends State<HomeFoodReviews>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    DimensionsConstants().init(context);
    FontSizeConstants().init(context);
    IconSizeConstants().init(context);
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(height: SizeConfig.screenHeight! / 2.5),
            Container(
              height: SizeConfig.screenHeight! / 4.5,
              width: SizeConfig.screenWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(PathConstants.model2), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: SizeConfig.screenHeight! / 6,
              left: SizeConfig.screenHeight! / 29,
              child: Container(
                height: SizeConfig.defaultSize! * 14,
                width: SizeConfig.defaultSize! * 14,
                decoration: BoxDecoration(
                    border: Border.all(color: Color_Const.white, width: 2.0),
                    borderRadius:
                        BorderRadius.circular(DimensionsConstants.dimensions70),
                    image: const DecorationImage(
                        image: AssetImage(PathConstants.model1),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              top: SizeConfig.defaultSize! * 20,
              left: SizeConfig.defaultSize! * 18,
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      textWidgetWithoutColor(
                          AllStringsConstants.NameOfpersonFoodReviews,
                          FontFamilyConstants.quicksand,
                          FontSizeConstants.fontsize15,
                          FontWeight.bold),
                      textWidget(
                          AllStringsConstants.numberOfFollowersFoodReviews,
                          FontFamilyConstants.quicksand,
                          Color_Const.grey,
                          FontSizeConstants.fontsize13,
                          FontWeight.bold),
                    ],
                  ),
                  const HorizintalSpace(1.5),
                  Container(
                    height: SizeConfig.defaultSize! * 3.1,
                    width: SizeConfig.defaultSize! * 75,
                    decoration: BoxDecoration(
                        color: Color_Const.white,
                        borderRadius: BorderRadius.circular(
                            DimensionsConstants.dimensions11)),
                    child: Center(
                      child: textWidget(
                          AllStringsConstants.folowWordFoodReviews,
                          FontFamilyConstants.quicksand,
                          Color_Const.darkgreen,
                          FontSizeConstants.fontsize10,
                          FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: SizeConfig.defaultSize! * .5),
          child: tapBar(tabController),
        ),
        SizedBox(
          height: SizeConfig.defaultSize! * 50,
          child: TabBarView(
            controller: tabController,
            children: const <Widget>[
              FoodListReviews(),
              FoodListReviews(),
              FoodListReviews(),
            ],
          ),
        )
      ],
    ));
  }
}
