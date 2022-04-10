import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/StringsAllProject.dart';

import 'Widgets/BuildFoodCard.dart';

class FruitsPage extends StatefulWidget {
  @override
  _FruitsPageState createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: AllStringsConstants.foodCardItems41.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return buildFoodCard(
              AllStringsConstants.foodCardItems41[index]['image'],
              AllStringsConstants.foodCardItems41[index]['price'],
              AllStringsConstants.foodCardItems41[index]['descriptipn'],
              AllStringsConstants.foodCardItems41[index]['color']
          );
        }));
  }
}
