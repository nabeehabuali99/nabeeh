import 'package:flutter/material.dart';

import 'Widgets/CardDetailProfile.dart';
import 'Widgets/ListItemProfile.dart';
import 'package:test_app_nabeeh/Constants/Routes.dart' as route;


class ProfileApp extends StatefulWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  _ProfileAppPageState createState() => _ProfileAppPageState();
}

class _ProfileAppPageState extends State<ProfileApp>
    with SingleTickerProviderStateMixin {
  late TabController controller;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =   TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
int value =5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Column(children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: 250.0,
              width: double.infinity,
              color: const Color(0xFFFDD148),
            ),
            Positioned(
              bottom: 250.0,
              right: 100.0,
              child: Container(
                height: 400.0,
                width: 400.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200.0),
                    color:
                    const Color( 0xFFFEE16D  ).withOpacity(0.4)),
              ),
            ),
            Positioned(
              bottom: 300.0,
              left: 150.0,
              child: Container(
                  height: 300.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150.0),
                      color: const Color( 0xFFFEE16D )
                          .withOpacity(0.5))),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 15.0),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(route.profile);
                      },
                      child: Hero(
                        tag: 'assets/chris.png',
                        child: Container(
                          alignment: Alignment.topLeft,
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(37.5),
                              border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 3.0),
                              image: const DecorationImage(
                                  image: AssetImage('assets/chris.png'))),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Pino',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '0795195908',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 15.0,
                              color: Colors.black.withOpacity(0.7)),
                        )
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width - 250.0),
                    Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: const Icon(Icons.settings),
                        onPressed: () {
                          Navigator.of(context).pushNamed(route.profile);
                        },
                        color: Colors.white,
                        iconSize: 30.0,
                      ),
                    ),
                    const SizedBox(height: 15.0)
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.folder_shared),
                          color: Colors.white,
                          iconSize: 40.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed(route.travel);
                          },
                        ),
                        const Text(
                          'Favorites',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.account_balance_wallet),
                          color: Colors.white,
                          iconSize: 40.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed(route.toCart);

                          },
                        ),
                        const Text(
                          'Wallet',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.print),
                          color: Colors.white,
                          iconSize: 40.0,
                          onPressed: () { Navigator.of(context).pushNamed(route.toCart);},
                        ),
                        const Text(
                          'Footprint',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.computer),
                            color: Colors.white,
                            iconSize: 40.0,
                            onPressed: () {Navigator.of(context).pushNamed(route.food);},
                          ),
                          const Text(
                            'Coupon',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25.0),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:   <Widget>[
                        GestureDetector(onTap: (){
                          setState(() {
                              value++;
                        });

                        },
                            child: CardDetail(title:'Pending payment', imgPath:'assets/card.png', valueCount:value)),
                        const CardDetail(title:'To be shipped', imgPath:'assets/box.png', valueCount:0),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        CardDetail(title:'To be received', imgPath:'assets/trucks.png', valueCount:8),
                        CardDetail(
                            title:'Return / Replace', imgPath:'assets/returnbox.png',valueCount: 0),
                      ],
                    ),
                    const SizedBox(height: 5.0)
                  ],
                )
              ],
            )
          ]),
          const SizedBox(height: 15.0),
            const ListItemProfile(title:'Gift card',buttonColor: Colors.red, iconButton:Icons.account_box),
          const ListItemProfile(title:'Bank card', buttonColor:  Color(0xFFE89300 ), iconButton:Icons.credit_card),
          const ListItemProfile(title:'Replacement code',buttonColor:   Color(0xFFFB8662),iconButton: Icons.grid_on),
          const ListItemProfile(title:'Consulting collection', buttonColor:Colors.blue, iconButton:Icons.pages),
          const ListItemProfile(title:'Customer service', buttonColor:Color(0xFFECB800), iconButton:Icons.person)
        ])
      ]),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.yellow,
          tabs:   <Widget>[
            Tab(child:IconButton(icon: const Icon(Icons.event_seat, color: Colors.grey), onPressed: () {
              Navigator.of(context).pushNamed(route.homeScreenApp);
            },),),
            const Tab(icon: Icon(Icons.timer, color: Colors.grey)),
            const Tab(icon: Icon(Icons.shopping_cart, color: Colors.grey)),
            const Tab(icon: Icon(Icons.person_outline, color: Colors.yellow))
          ],
        ),
      ),
    );
  }

}