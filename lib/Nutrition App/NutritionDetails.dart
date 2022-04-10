import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/FontFamilyConstants.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Icon%20Button%20Widget.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Dimensions.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/FontSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/IconSizeConstants.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Space%20Widgets.dart';
import 'package:test_app_nabeeh/Constants/StringsAllProject.dart';

import '../Constants/Colors.dart';
import '../Constants/My Icons.dart';
import '../Constants/SizeConfig/Size_Config.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  const DetailsPage({this.heroTag, this.foodName, this.foodPrice});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var selectedCard = 'WEIGHT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color_Const.property,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(MyIcons.arrow),
            color: Color_Const.white,
          ),
          backgroundColor: Color_Const.transparent,
          elevation: 0.0,
          title: textWidget(
              'Details',
              FontFamilyConstants.montserrat,
              Color_Const.white,
              FontSizeConstants.fontsize15,
              FontWeight.normal),
          centerTitle: true,
          actions: <Widget>[
            iconButtonWidget(
              MyIcons.moreh,
              Color_Const.white,
              IconSizeConstants.iconSize15,
              () {},
            )
          ],
        ),
        body: ListView(children: [
          Stack(children: [
            Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Color_Const.transparent),
            Positioned(
                top: 75.0,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft:
                              Radius.circular(DimensionsConstants.dimensions45),
                          topRight:
                              Radius.circular(DimensionsConstants.dimensions45),
                        ),
                        color: Color_Const.white),
                    height: SizeConfig.screenHeight! - 100.0,
                    width: SizeConfig.screenWidth!)),
            Positioned(
                top: SizeConfig.defaultSize! * 3,
                left: (SizeConfig.screenWidth! / 2) - 100.0,
                child: Hero(
                    tag: widget.heroTag,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.heroTag),
                                fit: BoxFit.cover)),
                        height: SizeConfig.screenHeight! / 2.5,
                        width: SizeConfig.screenWidth! / 1.4))),
            Positioned(
                top: SizeConfig.defaultSize! * 26,
                left: SizeConfig.defaultSize! * 2.5,
                right: SizeConfig.defaultSize! * 2.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    textWidgetWithoutColor(
                        widget.foodName,
                        FontFamilyConstants.montserrat,
                        FontSizeConstants.fontsize25,
                        FontWeight.bold),
                    const VerticalSpace(2.2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        textWidget(
                            widget.foodPrice,
                            FontFamilyConstants.montserrat,
                            Color_Const.grey,
                            FontSizeConstants.fontsize20,
                            FontWeight.normal),
                        Container(
                            height: SizeConfig.defaultSize! * 3,
                            color: Color_Const.grey,
                            width: 1.0),
                        Container(
                          width: SizeConfig.defaultSize! * 12,
                          height: SizeConfig.defaultSize! * 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  DimensionsConstants.dimensions20),
                              color: Color_Const.property),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: SizeConfig.defaultSize! * 3,
                                  width: SizeConfig.defaultSize! * 3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          DimensionsConstants.dimensions7),
                                      color: Color_Const.property),
                                  child: Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Color_Const.white,
                                      size: IconSizeConstants.iconSize20,
                                    ),
                                  ),
                                ),
                              ),
                              textWidget(
                                  '2',
                                  FontFamilyConstants.montserrat,
                                  Color_Const.white,
                                  FontSizeConstants.fontsize15,
                                  FontWeight.normal),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: SizeConfig.defaultSize! * 3,
                                  width: SizeConfig.defaultSize! * 3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      color: Color_Const.white),
                                  child: Center(
                                    child: Icon(
                                      MyIcons.add,
                                      color: Color_Const.property,
                                      size: IconSizeConstants.iconSize20,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const VerticalSpace(2.1),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 15,
                      child: ListView.builder(
                          itemCount: AllStringsConstants.foodItemsInfo42.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) {
                            return _buildInfoCard(
                                AllStringsConstants.foodItemsInfo42[index]
                                    ['cardTitle'],
                                AllStringsConstants.foodItemsInfo42[index]
                                    ['info'],
                                AllStringsConstants.foodItemsInfo42[index]
                                    ['unit']);
                          })),
                    ),
                    const VerticalSpace(2),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    DimensionsConstants.dimensions11),
                                topRight: Radius.circular(
                                    DimensionsConstants.dimensions11),
                                bottomLeft: Radius.circular(
                                    DimensionsConstants.dimensions25),
                                bottomRight: Radius.circular(
                                    DimensionsConstants.dimensions25)),
                            color: Colors.black),
                        height: SizeConfig.defaultSize! * 5.5,
                        child: Center(
                          child: textWidget(
                              '\$52.00',
                              FontFamilyConstants.montserrat,
                              Color_Const.white,
                              FontSizeConstants.fontsize15,
                              FontWeight.normal),
                        ),
                      ),
                    )
                  ],
                ))
          ])
        ]));
  }

  Widget _buildInfoCard(String cardTitle, String info, String unit) {
    return InkWell(
        onTap: () {
          selectCard(cardTitle);
        },
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(DimensionsConstants.dimensions11),
              color: cardTitle == selectedCard
                  ? Color_Const.property
                  : Color_Const.white,
              border: Border.all(
                  color: cardTitle == selectedCard
                      ? Colors.transparent
                      : Colors.grey.withOpacity(0.3),
                  style: BorderStyle.solid,
                  width: 0.75),
            ),
            height: SizeConfig.defaultSize! * 11,
            width: SizeConfig.defaultSize! * 11,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize! * 1,
                        left: SizeConfig.defaultSize! * 1.5),
                    child: textWidget(
                        cardTitle,
                        FontFamilyConstants.montserrat,
                        cardTitle == selectedCard
                            ? Color_Const.white
                            : Color_Const.grey.withOpacity(0.7),
                        FontSizeConstants.fontsize13,
                        FontWeight.normal),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize! * 1.5,
                        bottom: SizeConfig.defaultSize! * 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        textWidget(
                            info,
                            FontFamilyConstants.montserrat,
                            cardTitle == selectedCard
                                ? Color_Const.white
                                : Color_Const.black,
                            FontSizeConstants.fontsize15,
                            FontWeight.bold),
                        textWidget(
                            unit,
                            FontFamilyConstants.montserrat,
                            cardTitle == selectedCard
                                ? Color_Const.white
                                : Color_Const.black,
                            FontSizeConstants.fontsize13,
                            FontWeight.normal),
                        const VerticalSpace(1),
                      ],
                    ),
                  )
                ])));
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
