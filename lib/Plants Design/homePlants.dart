import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';

import '../Constants/My Icons.dart';
import '../Constants/Shared Widgets/Text Widget.dart';
import 'PlantList.dart';

class HomePlants extends StatefulWidget {
  const HomePlants({Key? key}) : super(key: key);

  @override
  _HomePlantsState createState() => _HomePlantsState();
}

class _HomePlantsState extends State<HomePlants>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        const SizedBox(height: 15.0),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: const Icon(MyIcons.Menu),
                onPressed: () {},
              ),
              FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color_Const.grey.withOpacity(0.3),
                  mini: true,
                  elevation: 0.0,
                  child: Icon(MyIcons.shopping,
                      color: Color_Const.black, size: 17.0)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: textWidgetWithoutColor(
              'Top Picks', 'Montserrat', 40.0, FontWeight.w500),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color_Const.black,
            unselectedLabelColor: Colors.grey.withOpacity(0.5),
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                child: textWidgetWithoutColor(
                    'Top', 'Montserrat', 17.0, FontWeight.bold),
              ),
              Tab(
                child: textWidgetWithoutColor(
                    'Outdoor', 'Montserrat', 17.0, FontWeight.bold),
              ),
              Tab(
                child: textWidgetWithoutColor(
                    'Indoor', 'Montserrat', 17.0, FontWeight.bold),
              ),
              Tab(
                child: textWidgetWithoutColor(
                    'Plants', 'Montserrat', 17.0, FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 200.0,
          child: TabBarView(
            controller: tabController,
            children: const <Widget>[
              PlantList(),
              PlantList(),
              PlantList(),
              PlantList()
            ],
          ),
        )
      ],
    ));
  }
}
