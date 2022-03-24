import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/Routes.dart' as route;

import '../../Constants/My Icons.dart';
import '../Widget/GetWorkList.dart';
import '../Widget/MenuCardChefDesign.dart';

class ChefDesign extends StatefulWidget {
  const ChefDesign({Key? key}) : super(key: key);

  @override
  _ChefDesignState createState() => _ChefDesignState();
}

List<String> items = [
  'assets/fruitpancake.png',
  'assets/dumplings.png',
  'assets/noodles.png'
];
bool Following = false;

class _ChefDesignState extends State<ChefDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 330,
              width: double.infinity,
            ),
            Container(
              height: 200.0,
              width: double.infinity,
              color: Color_Const.Customred,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(MyIcons.arrow),
                onPressed: () {
                  Navigator.of(context).pushNamed(route.fashionDesign);
                },
                color: Color_Const.white,
              ),
            ),
            Positioned(
              top: 125.0,
              left: 15.0,
              right: 15.0,
              child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(7.0),
                child: Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: Color_Const.white),
                ),
              ),
            ),
            Positioned(
              top: 75.0,
              left: (MediaQuery.of(context).size.width / 2 - 50.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, route.profile);
                },
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/chris.png'),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
              top: 190.0,
              left: (MediaQuery.of(context).size.width / 2) - 105.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Chris Pratt',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                  ),
                  const SizedBox(height: 7.0),
                  Text(
                    'China',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        color: Color_Const.grey),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        color: Color_Const.Customred,
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                                elevation: 16,
                                child: Container(
                                  height: 150.0,
                                  width: 360.0,
                                  child: ListView(
                                    children: <Widget>[
                                      const SizedBox(height: 20),
                                      Center(
                                        child: Text(
                                          "Your Message",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Color_Const.blue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      TextFormField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              prefixIcon: Icon(MyIcons.message,
                                                  color: Color_Const.grey,
                                                  size: 30.0),
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 15.0, top: 15.0),
                                              hintText: 'Your Message',
                                              hintStyle: TextStyle(
                                                  color: Color_Const.grey,
                                                  fontFamily: 'Quicksand'))),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20.0),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text(
                                                'Cancel',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20.0),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text(
                                                'Send',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          'Message',
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Color_Const.white),
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        color: Following ? Color_Const.grey : Color_Const.blue,
                        onPressed: () {
                          setState(() {
                            Following = !Following;
                          });
                        },
                        child: Following
                            ? Text(
                                'Following',
                                style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Color_Const.white),
                              )
                            : Text(
                                'UnFollow',
                                style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Color_Const.white),
                              ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Menu',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'see all',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 15.0,
                    color: Color_Const.grey,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        Column(
          children: const <Widget>[
            MenuDesign(
                title: 'Berry banana milkshake',
                imgPath: 'assets/bananabreak.png',
                type: 'Breakfast',
                rating: 4,
                views: 2.8,
                likes: 1.2),
            SizedBox(height: 12.0),
            MenuDesign(
                title: 'Fruit pancake',
                imgPath: 'assets/fruitbreak.png',
                type: 'Breakfast',
                rating: 4,
                views: 4.2,
                likes: 2.8),
          ],
        ),
        const SizedBox(height: 25.0),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Works',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'see all',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 15.0,
                    color: Color_Const.grey,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 5.0),
          child: Container(
            height: 125.0,
            child: ListView.builder(
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return GetWork(imgPath: items[index]);
              }),
            ),
          ),
        ),
        const SizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Bought',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'see all',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 15.0,
                    color: Color_Const.grey,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
        const SizedBox(height: 15.0),
      ],
    ));
  }
}
