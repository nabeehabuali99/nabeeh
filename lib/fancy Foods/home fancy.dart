import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Space%20Widgets.dart';
import 'package:test_app_nabeeh/fancy%20Foods/Widgets/listItem.dart';

import '../Constants/Colors.dart';
import '../Constants/FontFamilyConstants.dart';
import '../Constants/FontSizeConstants.dart';
import '../Constants/My Icons.dart';
import '../Constants/PathImageConstants.dart';
import '../Constants/Shared Widgets/Text Widget.dart';
import '../Constants/Size_Config.dart';
import '../Constants/StringsAllProject.dart';
import 'Widgets/TabBarWidget.dart';
import 'Widgets/TextFieldWidget.dart';
import 'foodList.dart';

class FancyFood extends StatefulWidget {
  const FancyFood({Key? key}) : super(key: key);

  @override
  _FancyFoodState createState() => _FancyFoodState();
}

class _FancyFoodState extends State<FancyFood>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Color_Const.white,
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: SizeConfig.defaultSize! * 22,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight:
                              Radius.circular(SizeConfig.defaultSize! * 8)),
                      color: Color_Const.CustOrange),
                ),
                Container(
                  height: SizeConfig.defaultSize! * 16,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight:
                              Radius.circular(SizeConfig.defaultSize! * 7)),
                      color: Color_Const.lightPink),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize! * 3,
                      left: SizeConfig.defaultSize! * 1.8),
                  child: textWidget(
                      AllStringsConstants.welcomeWordFood,
                      FontFamilyConstants.montserrat,
                      Color_Const.white,
                      FontSizeConstants.fontsize30,
                      FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize! * 7,
                      left: SizeConfig.defaultSize! * 1.8),
                  child: textWidget(
                      AllStringsConstants.chooseYourFavFood,
                      FontFamilyConstants.montserrat,
                      Color_Const.white,
                      FontSizeConstants.fontsize30,
                      FontWeight.bold),
                ),
                textFieldWidget(),
              ],
            ),
            TabBar(
              controller: tabController,
              indicatorColor: Color_Const.CustOrange,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: SizeConfig.defaultSize! * .4,
              isScrollable: true,
              labelColor: Color_Const.darkkred,
              unselectedLabelColor: Color_Const.darkkred,
              tabs: <Widget>[
                tabWidget(
                  AllStringsConstants.foodType1,
                ),
                tabWidget(
                  AllStringsConstants.foodType2,
                ),
                tabWidget(
                  AllStringsConstants.foodType3,
                ),
                tabWidget(
                  AllStringsConstants.foodType4,
                ),
              ],
            ),
            const VerticalSpace(1),
            SizedBox(
              height: SizeConfig.defaultSize! * 20,
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  FoodList(),
                  FoodList(),
                  FoodList(),
                  FoodList(),
                ],
              ),
            ),
            const VerticalSpace(1),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 1.5),
              child: textWidgetWithoutColor(
                  AllStringsConstants.recommandWordFood,
                  FontFamilyConstants.montserrat,
                  FontSizeConstants.fontsize15,
                  FontWeight.normal),
            ),
            const ListItem(
                imgPath: PathConstants.steakImage,
                foodName: AllStringsConstants.foodName1,
                desc: AllStringsConstants.foodDesc1,
                price: AllStringsConstants.foodPrice1,
                likes: 134,
                calCount: 2412,
                serving: AllStringsConstants.foodserve2),
            const VerticalSpace(1),
            const ListItem(
                imgPath: PathConstants.steakImage,
                foodName: AllStringsConstants.foodName2,
                desc: AllStringsConstants.foodDesc2,
                price: AllStringsConstants.foodPrice2,
                likes: 134,
                calCount: 2412,
                serving: AllStringsConstants.foodserve1),
            const VerticalSpace(2),
          ],
        ));
  }
}
