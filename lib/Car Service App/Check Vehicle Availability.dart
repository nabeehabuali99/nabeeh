import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text%20Widget.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Space%20Widgets.dart';
import '../Constants/Routes.dart' as route;
import '../Constants/Shared Widgets/Icon Button Widget.dart';

class CheckAvailability extends StatefulWidget {
  const CheckAvailability({Key? key}) : super(key: key);

  @override
  _CheckAvailabilityState createState() => _CheckAvailabilityState();
}

class _CheckAvailabilityState extends State<CheckAvailability> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color_Const.lightlightyellow,
                Color_Const.darkyellow
              ])),
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 60.0),
              Align(
                alignment: Alignment.topRight,
                child:
                    iconButtonWidget(MyIcons.close, Color_Const.black, 25, () {
                  Navigator.of(context).pop();
                }),
              ),
              textWidget('Check Vehicle Availability', 'Cabin',
                  Color_Const.white, 45.0, FontWeight.bold),

              VerticalSpace(2),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter your zip code',
                    hintStyle: TextStyle(color: Color_Const.white),
                    prefixIcon:
                        Icon(MyIcons.arrowForward, color: Color_Const.white),
                    border: InputBorder.none),
                keyboardType: TextInputType.number,
              ),
              VerticalSpace(2),
              textWidget(
                  'We want to ensure the vehicle is available in your area for delivery',
                  'Montserrat',
                  Color_Const.white,
                  15.0,
                  FontWeight.normal),
              VerticalSpace(2),
              Image.asset('assets/porsche.png',
                  fit: BoxFit.cover, height: SizeConfig.defaultSize! * 27),
              Container(
                height: 0.5,
                color: Color_Const.white,
              ),
              VerticalSpace(2),
              textWidget('Been here before ? Already have an eleanor account ?',
                  'Montserrat', Color_Const.white, 15.0, FontWeight.normal),

              //SizedBox(height: 10.0),
              VerticalSpace(2),
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(route.logout);
                    },
                    child: textWidget('Sign In', 'Montserrat',
                        Color_Const.white, 15.0, FontWeight.normal),
                  ),
                  const SizedBox(width: 10.0),
                  iconButtonWidget(MyIcons.arrowForward, Color_Const.white, 25,
                      () {
                    Navigator.of(context).pushNamed(route.logout);
                  })
                ],
              )
            ],
          ),
        ));
  }
}
