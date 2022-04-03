import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';
import 'package:test_app_nabeeh/Constants/Space%20Widgets.dart';

import '../Constants/Colors.dart';
import '../Constants/Shared Widgets/Text Widget.dart';
import '../Constants/Size_Config.dart';

class PlantDetail extends StatelessWidget {
  const PlantDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: SizeConfig.screenHeight,
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(color: Color_Const.darkgreen),
              ),
              Positioned(
                top: SizeConfig.screenHeight! / 2,
                child: Container(
                  height: SizeConfig.screenHeight! / 2,
                  width: SizeConfig.screenWidth!,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Color_Const.white),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(MyIcons.arrowback, color: Color_Const.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 10.0, left: MediaQuery.of(context).size.width - 60.0),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color_Const.darkgreen,
                  mini: true,
                  elevation: 0.0,
                  child: Icon(MyIcons.shopping,
                      color: Color_Const.white, size: 15.0),
                ),
              ),
              Positioned(
                top: 10.0,
                left: MediaQuery.of(context).size.width - 30.0,
                child: Container(
                  height: 18.0,
                  width: 18.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
                      color: Color_Const.white),
                  child: Center(
                    child: textWidget('1', 'Montserrat', Color_Const.darkgreen,
                        15, FontWeight.normal),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    textWidget(
                      'INDOOR',
                      'Montserrat',
                      Color_Const.lightgreen,
                      12.0,
                      FontWeight.w600,
                    ),
                    textWidget(
                      'Ficus',
                      'Montserrat',
                      Color_Const.white,
                      45.0,
                      FontWeight.w600,
                    ),
                    const SizedBox(height: 15.0),
                    textWidget(
                      'FROM',
                      'Montserrat',
                      Color_Const.lightgreen,
                      12.0,
                      FontWeight.w600,
                    ),
                    textWidget(
                      '\$30',
                      'Montserrat',
                      Color_Const.white,
                      25.0,
                      FontWeight.w300,
                    ),
                    VerticalSpace(1.5),
                    textWidget(
                      'SIZES',
                      'Montserrat',
                      Color_Const.lightgreen,
                      12.0,
                      FontWeight.w600,
                    ),
                    textWidget(
                      'Small',
                      'Montserrat',
                      Color_Const.white,
                      25.0,
                      FontWeight.w300,
                    ),
                    const VerticalSpace(1),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Color_Const.black),
                      child: Center(
                        child: Icon(MyIcons.shopping, color: Color_Const.white),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: (SizeConfig.screenHeight! / 2) - 185.0,
                left: (SizeConfig.screenWidth! / 2) - 80.0,
                child: const Image(
                  image: AssetImage('assets/whiteplant.png'),
                  fit: BoxFit.cover,
                  height: 250.0,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height - 275.0,
                      left: 20.0,
                      right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      textWidgetWithoutColor('All to know...', 'Montserrat',
                          25.0, FontWeight.w600),
                      const VerticalSpace(2),
                      textWidgetWithoutColor(
                          'If you are completely new to houseplants then Ficus is a brilliant first plant to adopt, it is very easy to look after and won\'t occupy too much space.',
                          'Montserrat',
                          14.0,
                          FontWeight.normal),
                      const VerticalSpace(2),
                      textWidgetWithoutColor(
                          'Details', 'Montserrat', 20.0, FontWeight.w600),
                      //SizedBox(height: 10.0),
                      const VerticalSpace(1),
                      textWidgetWithoutColor('Plant height: 35-45cm;',
                          'Montserrat', 14.0, FontWeight.normal),
                      textWidgetWithoutColor('Nursery pot width: 12cm',
                          'Montserrat', 14.0, FontWeight.normal),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
