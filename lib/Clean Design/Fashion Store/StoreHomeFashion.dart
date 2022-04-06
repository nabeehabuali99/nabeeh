import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Space%20Widgets.dart';

import '../../Constants/Colors.dart';
import '../../Constants/SizeConfig/Size_Config.dart';
import '../../Constants/Routes.dart'as route;

class FashionStore extends StatefulWidget {
  const FashionStore({Key? key}) : super(key: key);

  @override
  _FashionStoreState createState() => _FashionStoreState();
}

class _FashionStoreState extends State<FashionStore> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset('assets/pic4.png', fit: BoxFit.cover, height: SizeConfig.defaultSize! * 43 ),
            Center(
              child: Column(
                children: <Widget>[
                  VerticalSpace(7.5),
                  textWidget('Louis W. & A.P.C', 'Montserrat',
                      Color_Const.white, 40.0, FontWeight.normal),
                  textWidget('Drop a Chic Selection of Outerwear', 'Quicksand',
                      Color_Const.white, 20.0, FontWeight.w200),
                  VerticalSpace(1),
                  textWidget('for 2019 Spring/Summer', 'Quicksand',
                      Color_Const.white, 20.0, FontWeight.w200),
                  VerticalSpace(17),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(route.detailInfo);
                    },
                    mini: true,
                    elevation: 0.0,
                    backgroundColor: Color_Const.white,
                    child: Center(
                        child: Icon(MyIcons.arrowForward,
                            color: Color_Const.black)),
                  )
                ],
              ),
            )
          ],
        ),
        Stack(
          children: <Widget>[
            Image.asset('assets/pic5.png', fit: BoxFit.cover, height: 400.0)
          ],
        )
      ],
    ));
  }
}
