import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';

import '../Constants/Shared Widgets/Text Widget.dart';
import '../Constants/Size_Config.dart';

class UserProfileFruit extends StatefulWidget {
  const UserProfileFruit({Key? key}) : super(key: key);

  @override
  _UserProfileFruitState createState() => _UserProfileFruitState();
}

bool isFollow = true;

class _UserProfileFruitState extends State<UserProfileFruit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color_Const.white,
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Container(
                  height: SizeConfig.defaultSize! * 6,
                  width: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/picsix.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: textWidget('Carson Arias', 'Montserrat',
                    Color_Const.black, 17.0, FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: textWidget('San Francisco, CA', 'Montserrat',
                    Color_Const.grey, 15.0, FontWeight.normal),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: textWidget(
                    'Hello, I am Carson. I love making cool photos, beautiful architecture and icecream.',
                    'Montserrat',
                    Color_Const.black,
                    15.0,
                    FontWeight.w300),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        textWidget('1789', 'Montserrat', Color_Const.red, 17.0,
                            FontWeight.normal),
                        textWidget('Followers', 'Montserrat', Color_Const.grey,
                            15.0, FontWeight.normal),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        textWidget('236', 'Montserrat', Color_Const.blue, 17.0,
                            FontWeight.normal),
                        textWidget('Following', 'Montserrat', Color_Const.grey,
                            15.0, FontWeight.normal)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        textWidget('990', 'Montserrat', Color_Const.red, 17.0,
                            FontWeight.normal),
                        textWidget('Likes', 'Montserrat', Color_Const.grey, 15,
                            FontWeight.normal)
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 25.0),
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/picone.png'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/pictwo.png'),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/picthree.png'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/picfour.png'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/picfive.png'),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 40.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.grey.withOpacity(0.2)),
                      child: const Center(
                        child: Icon(MyIcons.arrowback),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFollow = !isFollow;
                      });
                    },
                    child: isFollow
                        ? Container(
                            height: 40.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Color_Const.black.withOpacity(0.7),
                            ),
                            child: Center(
                              child: textWidget('FOLLOW', 'Montserrat',
                                  Color_Const.white, 15.0, FontWeight.normal),
                            ),
                          )
                        : Container(
                            height: 40.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Color_Const.blue.withOpacity(0.7),
                            ),
                            child: Center(
                              child: textWidget('UnFOLLOW', 'Montserrat',
                                  Color_Const.white, 15.0, FontWeight.normal),
                            ),
                          ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
