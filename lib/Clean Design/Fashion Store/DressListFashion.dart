import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Space%20Widgets.dart';

import '../../Constants/Colors.dart';
import '../../Constants/Shared Widgets/Text Widget.dart';

class DressList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            const HorizintalSpace(2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/pic1.png',
                    fit: BoxFit.cover, height: 160.0, width: 160.0),
                textWidget('\$499', 'Quicksand', Color_Const.black, 15.0,
                    FontWeight.bold)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/pic2.png',
                    fit: BoxFit.cover, height: 160.0, width: 160.0),
                textWidget('\$499', 'Quicksand', Color_Const.black, 15.0,
                    FontWeight.bold)
              ],
            ),
          ],
        ),
        VerticalSpace(1),
        Row(
          children: <Widget>[
            const HorizintalSpace(2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/pic3.png',
                    fit: BoxFit.cover, height: 160.0, width: 160.0),
                textWidget('\$499', 'Quicksand', Color_Const.black, 15.0,
                    FontWeight.bold)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/pic4.png',
                    fit: BoxFit.cover, height: 160.0, width: 160.0),
                textWidget('\$499', 'Quicksand', Color_Const.black, 15.0,
                    FontWeight.bold)
              ],
            ),
          ],
        )
      ],
    );
  }
}
