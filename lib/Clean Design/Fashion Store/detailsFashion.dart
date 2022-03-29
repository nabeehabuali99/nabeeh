import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';
import 'package:test_app_nabeeh/Constants/Space%20Widgets.dart';

import '../../Constants/Shared Widgets/Text Widget.dart';
import '../../Constants/Routes.dart'as route;
import 'DressListFashion.dart';

class DetailInfo extends StatefulWidget {
  const DetailInfo({Key? key}) : super(key: key);

  @override
  _DetailInfoState createState() => _DetailInfoState();
}

class _DetailInfoState extends State<DetailInfo>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/pic4.png'), fit: BoxFit.cover),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(MyIcons.arrow, color: Color_Const.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(route.currentCar);

                    },
                    backgroundColor: Color_Const.white,
                    child: Center(
                      child: Icon(MyIcons.shoppingbasket,
                          color: Color_Const.black),
                    ),
                    mini: true,
                    elevation: 0.0,
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 100.0),
                child: textWidget('Woman', 'Montserrat', Color_Const.white,
                    37.0, FontWeight.bold),
              )
            ],
          ),

          VerticalSpace(3),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: textWidget(
                'Cutting-edge items to stay in style, perfect for all of your moments.',
                'Quicksand',
                Color_Const.black,
                17.0,
                FontWeight.normal),
          ),
           VerticalSpace(3),
          Container(
            height: 100.0,
            child: ListView(
              padding: const EdgeInsets.only(left: 15.0),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/pic3.png'),
                          fit: BoxFit.cover)),
                  height: 100.0,
                  width: 100.0,
                  child: Center(
                    child: textWidget('New In', 'Montserrat', Color_Const.white,
                        15.0, FontWeight.bold),
                  ),
                ),

                 const HorizintalSpace(2),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/pic4.png'),
                          fit: BoxFit.cover)),
                  height: 100.0,
                  width: 100.0,
                  child: Center(
                    child: textWidget('Tops', 'Montserrat', Color_Const.white,
                        15.0, FontWeight.bold),
                  ),
                ),

                const HorizintalSpace(2),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/pic5.png'),
                          fit: BoxFit.cover)),
                  height: 100.0,
                  width: 100.0,
                  child: Center(
                    child: textWidget('Pants', 'Montserrat', Color_Const.white,
                        15.0, FontWeight.bold),
                  ),
                ),
                const HorizintalSpace(2),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/pic4.png'),
                          fit: BoxFit.cover)),
                  height: 100.0,
                  width: 100.0,
                  child: Center(
                    child: textWidget('Accessories', 'Montserrat',
                        Color_Const.white, 15.0, FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),

           VerticalSpace(0.3),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Color_Const.transparent,
              labelColor: Color_Const.black,
              unselectedLabelColor: Color_Const.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: textWidget('All', 'Montserrat', Color_Const.grey.withOpacity(0.6), 17.0,
                      FontWeight.bold),
                ),
                Tab(
                  child: textWidget('Coats', 'Montserrat', Color_Const.grey.withOpacity(0.6),
                      17.0, FontWeight.bold),
                ),
                Tab(
                  child: textWidget('Jackets', 'Montserrat', Color_Const.grey.withOpacity(0.6),
                      17.0, FontWeight.bold),
                ),
                Tab(
                  child: textWidget('Blazers', 'Montserrat', Color_Const.grey.withOpacity(0.6),
                      17.0, FontWeight.bold),
                ),
                Tab(
                  child: textWidget('Dresses', 'Montserrat', Color_Const.grey.withOpacity(0.6),
                      17.0, FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 350.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                DressList(),
                DressList(),
                DressList(),
                DressList(),
                DressList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
