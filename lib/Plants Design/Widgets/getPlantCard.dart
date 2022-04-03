import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';

import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/Space Widgets.dart';
import '../PlantDetail.dart';

getPlantCard(String imgPath, String price, String plantType, String plantName,
    BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
        height: 325.0,
        width: 225.0,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color_Const.darkgreen),
          height: 250.0,
          width: 225.0,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const VerticalSpace(1),
                      textWidget(
                        'FROM',
                        'Montserrat',
                        Color_Const.lightgreen,
                        12.0,
                        FontWeight.w600,
                      ),
                      textWidget(
                        '\$' + price,
                        'Montserrat',
                        Color_Const.white,
                        20.0,
                        FontWeight.w400,
                      )
                    ],
                  ),
                  const HorizintalSpace(1),
                ],
              ),
              Image(
                image: AssetImage(imgPath),
                height: 165.0,
              ),
              Row(
                children: <Widget>[
                  const HorizintalSpace(3),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      textWidget(
                        plantType,
                        'Montserrat',
                        Color_Const.lightgreen,
                        12.0,
                        FontWeight.w600,
                      ),
                      textWidget(
                        plantName,
                        'Montserrat',
                        Color_Const.white,
                        20.0,
                        FontWeight.w600,
                      )
                    ],
                  ),
                ],
              ),
              const VerticalSpace(1),
              Row(
                children: <Widget>[
                  const HorizintalSpace(3),
                  Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color_Const.lightgreen,
                            style: BorderStyle.solid,
                            width: 0.5),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color_Const.darkgreen),
                    child: Icon(MyIcons.wb_sunny,
                        color: Color_Const.white.withOpacity(0.4), size: 20.0),
                  ),
                  const SizedBox(width: 15.0),
                  Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color_Const.lightgreen,
                            style: BorderStyle.solid,
                            width: 0.5),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color_Const.darkgreen),
                    child: Icon(MyIcons.branding_watermark,
                        color: Colors.white.withOpacity(0.4), size: 20.0),
                  ),
                  const HorizintalSpace(2),
                  Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color_Const.lightgreen,
                            style: BorderStyle.solid,
                            width: 0.5),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color_Const.darkgreen),
                    child: Icon(MyIcons.hot_tub,
                        color: Colors.white.withOpacity(0.4), size: 20.0),
                  ),
                  const HorizintalSpace(1),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PlantDetail()));
                    },
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(color: Color_Const.darkgreen),
                      child: Icon(MyIcons.help_outline,
                          color: Color_Const.white.withOpacity(0.4),
                          size: 20.0),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 90.0, top: 300.0),
        child: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Color_Const.black),
          child:
              Center(child: Icon(MyIcons.shopping, color: Color_Const.white)),
        ),
      )
    ],
  );
}
