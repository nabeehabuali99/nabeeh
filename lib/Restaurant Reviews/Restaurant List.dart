import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/PathImageConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Space%20Widgets.dart';
import 'package:test_app_nabeeh/Constants/StringsAllProject.dart';

import 'Widget/BuildCardItems.dart';

class MyRestaurantsList extends StatefulWidget {
  const MyRestaurantsList({Key? key}) : super(key: key);

  @override
  _MyRestaurantsListState createState() => _MyRestaurantsListState();
}

class _MyRestaurantsListState extends State<MyRestaurantsList> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GridView.count(
      crossAxisCount: 2,
      primary: false,
      padding: EdgeInsets.all(SizeConfig.defaultSize! * 1),
      crossAxisSpacing: SizeConfig.defaultSize! - 6,
      mainAxisSpacing:SizeConfig.defaultSize! - 6,
      shrinkWrap: true,
      children: <Widget>[
        buildCard(
            AllStringsConstants.nameOfTropiclRestaurantItem,
            AllStringsConstants.nameOfTropiclTypeRestaurantItem,
            AllStringsConstants.dateOfTypeRestaurantItem,
            AllStringsConstants.ratingOfTypeRestaurantItem5,
            PathConstants.tropicImage),
        buildCard(
            AllStringsConstants.nameOfOrangeRestaurantItem,
            AllStringsConstants.nameOfOrangeTypeRestaurantItem,
            AllStringsConstants.dateOfTypeRestaurantItem,
            AllStringsConstants.ratingOfTypeRestaurantItem3,
            PathConstants.orangesImage),
        buildCard(
            AllStringsConstants.nameOfSpringfieldRestaurantItem,
            AllStringsConstants.nameOfSpringfieldTypeRestaurantItem,
            AllStringsConstants.dateOfTypeRestaurantItem,
            AllStringsConstants.ratingOfTypeRestaurantItem5,
            PathConstants.berriesImage),
        buildCard(
            AllStringsConstants.nameOfBreakfastRestaurantItem,
            AllStringsConstants.nameOfBreakfastTypeRestaurantItem,
            AllStringsConstants.dateOfTypeRestaurantItem,
            AllStringsConstants.ratingOfTypeRestaurantItem3,
            PathConstants.almondsImage),
      ],
    );
  }
}
