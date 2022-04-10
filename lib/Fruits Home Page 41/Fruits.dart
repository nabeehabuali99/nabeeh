import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/FontFamilyConstants.dart';
import 'package:test_app_nabeeh/Constants/PathImageConstants.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Icon%20Button%20Widget.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/FontSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/IconSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/StringsAllProject.dart';

import '../Constants/Colors.dart';
import '../Constants/My Icons.dart';
import '../Constants/SizeConfig/Dimensions.dart';
import '../Constants/SizeConfig/Space Widgets.dart';
import 'FruitsDetail.dart';
import 'Widgets/GetFoodItem.dart';
import 'Widgets/TabBarWidgets.dart';

class HomeFruits41 extends StatefulWidget {
  const HomeFruits41({Key? key}) : super(key: key);

  @override
  _HomeFruits41State createState() => _HomeFruits41State();
}

class _HomeFruits41State extends State<HomeFruits41>
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
    DimensionsConstants().init(context);
    FontSizeConstants().init(context);
    SizeConfig().init(context);
    IconSizeConstants().init(context);
    return Scaffold(
        body: ListView(
      children: <Widget>[
        const VerticalSpace(1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            iconButtonWidget(MyIcons.Menu, Color_Const.grey,
                IconSizeConstants.iconSize15, () {}),
            Container(
              height: SizeConfig.screenHeight! / 18,
              width: SizeConfig.screenWidth! / 2,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius:
                      BorderRadius.circular(DimensionsConstants.dimensions25)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(top: SizeConfig.defaultSize! * 1),
                    prefixIcon: Icon(MyIcons.search, color: Color_Const.grey)),
              ),
            ),
            iconButtonWidget(
              MyIcons.shopping,
              Color_Const.grey,
              IconSizeConstants.iconSize15,
              () {},
            ),
          ],
        ),
         const VerticalSpace(1),
        Padding(
            padding: EdgeInsets.only(left:  SizeConfig.defaultSize! * 1),
            child: textWidgetWithoutColor(
                AllStringsConstants.allFruitsWordFruits41,
                FontFamilyConstants.quicksand,
                FontSizeConstants.fontsize20,
                FontWeight.bold)),
        Padding(
          padding: EdgeInsets.only(top:  SizeConfig.defaultSize! * 1),
          child: tapBarWidgets(tabController),
        ),
        SizedBox(
          height:  SizeConfig.screenHeight!  - 375.0,
          child: TabBarView(
            controller: tabController,
            children: <Widget>[
              FruitsPage(),
              FruitsPage(),
              FruitsPage(),
              FruitsPage(),
            ],
          ),
        ),
        const VerticalSpace(1),
        Padding(
            padding: EdgeInsets.only(left:  SizeConfig.defaultSize! * 1),
            child: textWidgetWithoutColor(
                AllStringsConstants.SalesWordFruits41,
                FontFamilyConstants.quicksand,
                FontSizeConstants.fontsize20,
                FontWeight.bold)),
        const VerticalSpace(1),
        SizedBox(
          height:  SizeConfig.screenHeight! ,
          child: ListView.builder(
            itemBuilder: ((context, index) {
              return buildFoodItem(
                  AllStringsConstants.foodItems41[index]['image'],
                  AllStringsConstants.foodItems41[index]['count'],
                  AllStringsConstants.foodItems41[index]['price']);
            }),
            itemCount: AllStringsConstants.foodItems41.length,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    ));
  }
}
