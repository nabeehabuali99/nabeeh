import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/Shared%20Widgets/Text Widget.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';
import 'package:image_picker/image_picker.dart';
import '../Constants/My Icons.dart';
import '../Constants/Routes.dart' as route;

class CurrentCar extends StatefulWidget {
  const CurrentCar({Key? key}) : super(key: key);

  @override
  _CurrentCarState createState() => _CurrentCarState();
}

class _CurrentCarState extends State<CurrentCar>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3);
  }

  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        return;
      }
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print("Filed to pick image: $e ");
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color_Const.white,
      body: ListView(
        padding: const EdgeInsets.only(left: 15.0),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 75.0),
                child: IconButton(
                  onPressed: () => pickImage(ImageSource.camera),
                  icon: const Icon(MyIcons.cameraAlt, size: 35.0),
                  color: Color_Const.lightyellow,
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: textWidget(
                    'Your Current Vehicle',
                    'Cabin',
                    Color_Const.darkblue.withOpacity(0.7),
                    50.0,
                    FontWeight.bold),
              ),
              const SizedBox(height: 20.0),
              image != null
                  ? Image.file(
                      image!,
                      width: SizeConfig.defaultSize! * 75,
                      height: SizeConfig.defaultSize! * 50.0,
                    )
                  : Image.asset('assets/porsche.png',
                      fit: BoxFit.cover,
                      height: SizeConfig.defaultSize! * 20.0,
                      width: SizeConfig.defaultSize! * 75),
              textWidget('PORSCHE', 'Oswald', Color_Const.black, 30.0,
                  FontWeight.bold),
              textWidget('2019 - 911 CARRERA S', 'Oswald', Color_Const.darkblue,
                  14.0, FontWeight.bold),
              const SizedBox(height: 20.0),
              Container(
                height: 0.75,
                width: SizeConfig.defaultSize! * 100.0,
                color: Color_Const.darkblue.withOpacity(0.4),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(MyIcons.cardTravel,
                            color: Color_Const.darkblue.withOpacity(0.4)),
                        const SizedBox(height: 5.0),
                        textWidget('19/24', 'Oswald', Color_Const.black, 20.0,
                            FontWeight.bold),
                      ],
                    ),
                    const SizedBox(width: 10.0),
                    Column(
                      children: <Widget>[
                        Icon(MyIcons.timers,
                            color: Color_Const.darkblue.withOpacity(0.4)),
                        const SizedBox(height: 5.0),
                        textWidget('3.2', 'Oswald', Color_Const.black, 20.0,
                            FontWeight.bold),
                      ],
                    ),
                    const SizedBox(width: 10.0),
                    Column(
                      children: <Widget>[
                        Icon(MyIcons.networkcCell,
                            color: Color_Const.darkblue.withOpacity(0.4)),
                        const SizedBox(height: 5.0),
                        textWidget('443', 'Oswald', Color_Const.black, 20.0,
                            FontWeight.bold),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 0.75,
                alignment: Alignment.center,
                width: SizeConfig.defaultSize! * 38.0,
                color: Color_Const.darkblue.withOpacity(0.4),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(MyIcons.refresh,
                      size: 35.0, color: Color_Const.darkblue.withOpacity(0.4)),
                  const SizedBox(width: 10.0),
                  textWidget(
                      'EXCHANGE YOUR VEHICLE',
                      'Oswald',
                      Color_Const.darkblue.withOpacity(0.7),
                      17.0,
                      FontWeight.bold),
                  const SizedBox(width: 60.0),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(route.checkAvailability);
                      },
                      icon: const Icon(
                        MyIcons.arrowForward,
                        size: 35.0
                      ),
                      color: Color_Const.darkblue.withOpacity(0.4)),
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Color_Const.white,
        child: TabBar(
            controller: controller,
            indicatorColor: Color_Const.transparent,
            tabs: <Widget>[
              Tab(
                  icon:
                      Icon(MyIcons.more, color: Color_Const.grey, size: 25.0)),
              Tab(
                  icon: Icon(MyIcons.playButton,
                      color: Color_Const.grey, size: 25.0)),
              Tab(
                  icon: Icon(MyIcons.navigation,
                      color: Color_Const.black, size: 25.0)),
            ]),
      ),
    );
  }
}
