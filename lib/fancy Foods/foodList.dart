import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Space%20Widgets.dart';
import 'package:test_app_nabeeh/Constants/StringsAllProject.dart';

import '../Constants/FontFamilyConstants.dart';
import '../Constants/My Icons.dart';
import '../Constants/PathImageConstants.dart';
import 'Widgets/BuildFoodCard.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State  <FoodList> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      buildFoodCard(PathConstants.steakImage, AllStringsConstants.dESSERT1, 7.0,
          273, false),
      buildFoodCard(PathConstants.steakImage, AllStringsConstants.dESSERT2,
          18.0, 241, true),
      buildFoodCard(PathConstants.steakImage, AllStringsConstants.dESSERT3, 18.0,
          1546, true)
    ], scrollDirection: Axis.horizontal);
  }
}
