import 'package:flutter/material.dart';

import 'Widgets/ContainerItem.dart';
import 'Widgets/itemCard.dart';
import 'package:test_app_nabeeh/Constants/Routes.dart' as route;
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 250.0,
                    width: double.infinity,
                    color: const Color(0xffFDD148),
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: const Color(0xFFFEE16D).withOpacity(0.4)),
                    ),
                  ),
                  Positioned(
                    bottom: 100.0,
                    left: 150.0,
                    child: Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150.0),
                            color: const Color(0xFFFEE16D).withOpacity(0.5))),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 15.0),
                      Row(
                        children: <Widget>[
                          const SizedBox(width: 15.0),
                          InkWell(
                            child: Hero(
                              tag: 'assets/chris.png',
                              child: Container(
                                alignment: Alignment.topLeft,
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 2.0),
                                    image: const DecorationImage(
                                        image: AssetImage('assets/chris.png'))),
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context,route.profileFurniture);
                            },
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width - 120.0),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: const Icon(Icons.menu),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context,
                                    route.cakeCataloge);
                              },
                              color: Colors.white,
                              iconSize: 30.0,
                            ),
                          ),
                          const SizedBox(height: 15.0),
                        ],
                      ),
                      const SizedBox(height: 50.0),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Hello , Pino',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'What do you want to buy?',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(5.0),
                          child: TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.search,
                                      color: Color(0xFFFEDF62), size: 30.0),
                                  contentPadding:
                                      EdgeInsets.only(left: 15.0, top: 15.0),
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Quicksand'))),
                        ),
                      ),
                      const SizedBox(height: 10.0)
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10.0),
              Stack(
                children: <Widget>[
                  const SizedBox(height: 10.0),
                  Material(
                      elevation: 1.0,
                      child: Container(height: 75.0, color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      ContainerItem(
                          ImageName: 'assets/sofas.png', nameOfItems: 'Sofas'),
                      ContainerItem(
                          ImageName: 'assets/wardrobe.png',
                          nameOfItems: 'Wardrobe'),
                      ContainerItem(
                          ImageName: 'assets/dresser.png', nameOfItems: 'Desk'),
                      ContainerItem(
                          ImageName: 'assets/ottomn.png',
                          nameOfItems: 'Dresser'),
                    ],
                  )
                ],
              ),
              const itemCard(
                  title: 'FinnNavian1', imgPath: 'assets/ottomn.png'),
              const itemCard(
                  title: 'FinnNavian2', imgPath: 'assets/anotherchair.png'),
              const itemCard(title: 'FinnNavian3', imgPath: 'assets/chair.png')
            ],
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.yellow,
          tabs: <Widget>[
            const Tab(icon: Icon(Icons.event_seat, color: Colors.yellow)),
            const Tab(icon: Icon(Icons.timer, color: Colors.grey)),
            Tab(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(route.cartFurniture);
                },
                icon: const Icon(Icons.shopping_cart, color: Colors.grey),
              ),
            ),
            Tab(
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(route.profileFurniture);
                    },
                    icon: const Icon(Icons.person_outline, color: Colors.grey)))
          ],
        ),
      ),
    );
  }
}
