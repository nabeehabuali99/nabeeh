import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/SizeConfig/Space%20Widgets.dart';

import 'GuessYouLikePage.dart';

class HomeGourmet extends StatefulWidget {
  const HomeGourmet({Key? key}) : super(key: key);
  @override
  _HomeGourmetState createState() => _HomeGourmetState();
}

class _HomeGourmetState extends State<HomeGourmet>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);

  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                width: SizeConfig.defaultSize,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Color_Const.black.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 2.0),
                ], color: Color_Const.white),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(MyIcons.setting),
                  color: Color_Const.black.withOpacity(0.7),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 50.0,
                left: 15.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 125.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(62.5),
                          image: const DecorationImage(
                              image: AssetImage('assets/orangemodel.png'),
                              fit: BoxFit.cover)),
                    ),
                    //const SizedBox(width: 15.0),
                    const HorizintalSpace(2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Joccb Coleman',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Color_Const.CustOrange),
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Icon(MyIcons.Location,
                                color: Color_Const.lightGreen),
                            Container(
                              width: MediaQuery.of(context).size.width - 175.0,
                              child: Text(
                                'Building 5104, 18 Street',
                                style: TextStyle(
                                    fontSize: 14.0, color: Color_Const.grey),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 175.0,
                          child: Text(
                            '13 Hudson Estuary, Freedom Island, New York Harbour',
                            style: TextStyle(
                                fontSize: 14.0, color: Color_Const.grey),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:   const EdgeInsets.only(top: 200.0),
                child: TabBar(
                  controller: tabController,
                  indicatorColor: Color_Const.CustOrange,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 4.0,
                  labelColor: Color_Const.CustOrange,
                  unselectedLabelColor: Color_Const.grey,
                  isScrollable: true,
                  tabs: const <Widget>[
                    Tab(
                      child: Text(
                        'Guess you like',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'News',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Coupon',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 275.0,
            child: TabBarView(
              controller: tabController,
              children: const <Widget>[
                GuessYouLikePage(),
                GuessYouLikePage(),
                GuessYouLikePage()
              ],
            ),
          )
        ],
      ),
    );
  }

}
