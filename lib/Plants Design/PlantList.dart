import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/Space%20Widgets.dart';

import '../Constants/Colors.dart';
import '../Constants/FontSizeConstants.dart';
import '../Constants/Shared Widgets/Text Widget.dart';
import 'PlantDetail.dart';
import 'Widgets/getPlantCard.dart';

class PlantList extends StatefulWidget {
  const PlantList({Key? key}) : super(key: key);

  @override
  _PlantListState createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  late ScrollController _scrollController;

  List allDescriptions = [
    'Aloe vera is a succelent plant of the genus Aloe. I\'ts medicinal uses and air purifying ability make it the plant that you shouldn\'t live without.',
    'Some other description',
    'Third description'
  ];

  late String description;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changedesc);
    setState(() {
      description = allDescriptions[0];
    });
  }

  changedesc() {
    var value = _scrollController.offset.round();
    var descIndex = (value / 150).round();
    setState(() {
      description = allDescriptions[descIndex];
    });
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListView(
      children: <Widget>[
        Container(
          height: 350.0,
          child: ListView(
            padding: const EdgeInsets.only(left: 25.0),
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              getPlantCard('assets/whiteplant.png', '25', 'OUTDOOR',
                  'Aloe Vera', context),
              const HorizintalSpace(2),
              getPlantCard(
                  'assets/smallplant.png', '25', 'INDOOR', 'Ficus', context),
              const HorizintalSpace(2),
              getPlantCard(
                  'assets/smallplant.png', '25', 'INDOOR', 'Ficus', context),
              const HorizintalSpace(2),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 10.0),
          child: textWidget('Description', 'Montserrat', Color_Const.black,
              FontSizeConstants.fontsize15, FontWeight.w500),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 10.0),
          child: textWidgetWithoutColor(
              description, 'Montserrat', 12.0, FontWeight.normal),
        )
      ],
    );
  }
}
