import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/FontFamilyConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/FontSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Space%20Widgets.dart';

import '../Constants/Colors.dart';
import '../Constants/My Icons.dart';
import '../Constants/PathImageConstants.dart';
import '../Constants/Shared Widgets/Text Widget.dart';
import '../Constants/SizeConfig/Size_Config.dart';
import 'Widgets/GetCard.dart';

class FoodListReviews extends StatefulWidget {
  const FoodListReviews({Key? key}) : super(key: key);

  @override
  _FoodListReviewsState createState() => _FoodListReviewsState();
}

class _FoodListReviewsState extends State<FoodListReviews> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left:SizeConfig.defaultSize! *1.5, right: SizeConfig.defaultSize! *1.5,
              top:SizeConfig.defaultSize! *1.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              textWidgetWithoutColor(
                'Recommended',
                FontFamilyConstants.quicksand,
                FontSizeConstants.fontsize20,
                FontWeight.bold,
              ),
              textWidget(
                'SEE ALL',
                FontFamilyConstants.quicksand,
                Color_Const.darkgreen,
                FontSizeConstants.fontsize13,
                FontWeight.bold,
              )
            ],
          ),
        ),
        Container(
            height: SizeConfig.defaultSize! *28,
            width: SizeConfig.defaultSize! * 15,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                getCard(PathConstants.food3, 'Granola with fruits'),
                getCard(PathConstants.food2, 'Bread with avocado'),
              ],
            ))
      ],
    );
  }


}
