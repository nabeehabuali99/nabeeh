import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';

import '../../Constants/Colors.dart';
import '../../Constants/FontFamilyConstants.dart';
 import '../../Constants/My Icons.dart';
import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/SizeConfig/FontSizeConstants.dart';
import '../../Constants/SizeConfig/Space Widgets.dart';
import '../../Constants/StringsAllProject.dart';

class ListItem extends StatefulWidget {
  const ListItem(
      {Key? key,
      required this.imgPath,
      required this.foodName,
      required this.desc,
      required this.price,
      required this.likes,
      required this.calCount,
      required this.serving})
      : super(key: key);
  final String imgPath;
  final String foodName;
  final String desc;
  final String price;
  final int likes;
  final int calCount;
  final String serving;

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: SizeConfig.defaultSize! * 1.5,
          top: SizeConfig.defaultSize! * 1.5),
      child: Stack(
        children: <Widget>[
          Container(
            height: SizeConfig.defaultSize! * 15,
            width: SizeConfig.screenWidth,
          ),
          Positioned(
            left: SizeConfig.defaultSize! * 1.5,
            top: SizeConfig.defaultSize! * 5,
            child: Container(
              height: SizeConfig.defaultSize! * 18,
              width: SizeConfig.screenWidth! - 15.0,
              decoration: BoxDecoration(
                  color: Color_Const.white,
                  borderRadius: BorderRadius.circular(SizeConfig.defaultSize! *.5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3.0,
                        blurRadius: 3.0)
                  ]),
              child:   const Text(AllStringsConstants.helloWordFood),
            ),
          ),
          Positioned(
              left: SizeConfig.defaultSize! * 10.5,
              top: SizeConfig.defaultSize! * 5,
              child: Container(
                height: SizeConfig.defaultSize! * 11,
                width: SizeConfig.screenWidth! - 15.0,
                decoration: BoxDecoration(
                    color: Color_Const.white,
                    borderRadius: BorderRadius.circular(SizeConfig.defaultSize! *.5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3.0,
                          blurRadius: 3.0)
                    ]),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: SizeConfig.defaultSize! * 2,
                        left: SizeConfig.defaultSize! * 1),
                    child: Row(
                      children: <Widget>[
                        Icon(MyIcons.Fav, color: Color_Const.lPink, size:SizeConfig.defaultSize! * 1.5),
                        const HorizintalSpace(.5),
                        textWidget(
                            widget.likes.toString(),
                            FontFamilyConstants.montserrat,
                            Color_Const.grey,
                            FontSizeConstants.fontsize13,
                            FontWeight.normal),
                        const HorizintalSpace(3),
                        Icon(MyIcons.account_box,
                            color: Color_Const.lPink, size:SizeConfig.defaultSize! * 1.5),
                        const HorizintalSpace(.5),
                        textWidget(
                            widget.calCount.toString() + AllStringsConstants.calFood,
                            FontFamilyConstants.montserrat,
                            Color_Const.grey,
                            FontSizeConstants.fontsize13,
                            FontWeight.normal),
                        const HorizintalSpace(3),
                        Icon(MyIcons.play_Circle_outline,
                            color: Color_Const.lPink, size:SizeConfig.defaultSize! * 1.5),
                        const HorizintalSpace(.5),
                        textWidget(
                            widget.serving,
                            FontFamilyConstants.montserrat,
                            Color_Const.grey,
                            FontSizeConstants.fontsize13,
                            FontWeight.normal)
                      ],
                    ),
                  ),
                ),
              )),
          Container(
            height: SizeConfig.defaultSize! * 12,
            width: SizeConfig.screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(SizeConfig.defaultSize! *1),
              color: Color_Const.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.defaultSize! * 1),
              child: Row(
                children: <Widget>[
                  Image.asset(widget.imgPath, fit: BoxFit.cover),
                  const HorizintalSpace(1),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const VerticalSpace(1),
                      textWidget(
                          widget.foodName,
                          FontFamilyConstants.montserrat,
                          Color_Const.lbrown,
                          FontSizeConstants.fontsize15,
                          FontWeight.normal),
                      const VerticalSpace(0.3),
                      SizedBox(
                        width: SizeConfig.defaultSize! * 19.5,
                        child: textWidget(
                            widget.desc,
                            FontFamilyConstants.montserrat,
                            Color_Const.grey,
                            FontSizeConstants.fontsize13,
                            FontWeight.normal),
                      ),
                      const VerticalSpace(0.0),
                      textWidget(
                          widget.price.toString(),
                          FontFamilyConstants.montserrat,
                          Color_Const.lPink,
                          FontSizeConstants.fontsize15,
                          FontWeight.normal)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
