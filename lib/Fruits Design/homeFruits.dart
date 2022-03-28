import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';

import '../Constants/Colors.dart';
import '../Constants/Size_Config.dart';
import 'ViewFruits.dart';
import '../Constants/Routes.dart' as route;

class HomeFruits extends StatefulWidget {
  const HomeFruits({Key? key}) : super(key: key);

  @override
  _HomeFruitsPageState createState() => _HomeFruitsPageState();
}

class _HomeFruitsPageState extends State<HomeFruits>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }

  bool love = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color_Const.white,
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
                top: 10.0, right: 15.0, bottom: 10.0, left: 15.0),
            width: SizeConfig.screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: const DecorationImage(
                            image: AssetImage('assets/picsix.png'),
                            fit: BoxFit.cover)),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(route.profile);
                  },
                ),
                IconButton(
                  icon: const Icon(MyIcons.Menu),
                  color: Color_Const.black,
                  iconSize: 27.0,
                  onPressed: () {
                    Navigator.of(context).pushNamed(route.cakeCataloge);
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Color_Const.transparent,
              labelColor: Color_Const.black,
              unselectedLabelColor: Color_Const.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: const <Widget>[
                Tab(
                  child: Text(
                    'Fruits',
                    style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Bread',
                    style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Drink',
                    style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[FruitsPage(), FruitsPage(), FruitsPage()],
            ),
          )
        ],
      ),
      bottomNavigationBar: Material(
        child: Container(
          decoration: BoxDecoration(color: Color_Const.white),
          height: 60.0,
          width: SizeConfig.screenWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: const Text(
                  'Filters',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Color_Const.black,
                        style: BorderStyle.solid,
                        width: 1.0),
                  ),
                ),
              ),
              InkWell(
                child: Icon(
                  MyIcons.search,
                  color: Color_Const.black,
                  size: 25.0,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(route.homeScreenApp);
                },
              ),
              InkWell(
                child: love
                    ? Icon(
                        MyIcons.Favborder,
                        color: Color_Const.black,
                        size: 25.0,
                      )
                    : Icon(
                        MyIcons.Fav,
                        color: Color_Const.red,
                        size: 25.0,
                      ),
                onTap: () {
                  setState(() {
                    love = !love;
                  });
                },
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Color_Const.red),
                height: 45.0,
                width: 65.0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(route.toCart);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        '12',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color_Const.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        MyIcons.shopping,
                        color: Color_Const.white,
                        size: 15.0,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
