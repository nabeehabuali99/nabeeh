import 'package:flutter/material.dart';

import 'Widget/FirstRowHomeScreen.dart';
import 'Widget/InfoRowHomeScreen.dart';
import 'Widget/ListItemHomeScreen.dart';
import 'Widget/SecondRowHmeScreen.dart';

class HomeScreenClean extends StatefulWidget {
  const HomeScreenClean({Key? key}) : super(key: key);

  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenClean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          elevation: 0.0,
          title: const Text(
            'EXPLORE',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
            iconSize: 17.0,
            onPressed: () {
              Navigator.of(context).pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.black,
              iconSize: 17.0,
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
                            const Center(
                              child: Text(
                                "Search",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.search,
                                        color: Colors.grey, size: 30.0),
                                    contentPadding:
                                        EdgeInsets.only(left: 15.0, top: 15.0),
                                    hintText: 'Search',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Quicksand'))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Cancel',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Search',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
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
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
          children: <Widget>[
            Container(
              height: 125.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                          height: 70.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              color: Colors.orange),
                          child: IconButton(
                            icon: const Icon(Icons.add),
                            color: Colors.white,
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    elevation: 16,
                                    child: Container(
                                      height: 150.0,
                                      width: 500.0,
                                      child: ListView(
                                        children: <Widget>[
                                          const SizedBox(height: 20),
                                          const Center(
                                            child: Text(
                                              "Add Account",
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          TextFormField(
                                              decoration: const InputDecoration(
                                                  border: InputBorder.none,
                                                  prefixIcon: Icon(Icons.add,
                                                      color: Colors.grey,
                                                      size: 30.0),
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 15.0,
                                                          top: 15.0),
                                                  hintText: 'Your Name',
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey,
                                                      fontFamily:
                                                          'Quicksand'))),
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
                                                    'Add',
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
                          )),
                      const SizedBox(height: 7.0),
                      const Text('Add To',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                  const SizedBox(width: 25.0),
                  const ListItem(
                      imgPath: 'assets/chris.png',
                      name: 'Chris',
                      available: true),
                  const SizedBox(width: 25.0),
                  const ListItem(
                      imgPath: 'assets/hugh.png',
                      name: 'Hugh',
                      available: true),
                  const SizedBox(width: 25.0),
                  const ListItem(
                      imgPath: 'assets/johnnydepp.png',
                      name: 'Depp',
                      available: false),
                  const SizedBox(width: 25.0),
                  const ListItem(
                      imgPath: 'assets/tomcruise.png',
                      name: 'Tom',
                      available: false),
                ],
              ),
            ),
            const SizedBox(height: 15.0),
            const FirstRow(
                imgPath1: 'assets/cone.png',
                imgPath2: 'assets/letter.png',
                avatarImg: 'assets/chris.png',
                nameItem: 'ice Cream',
                nameUser: 'mohammd',
                time: '10:57PM'),
            const SizedBox(height: 10.0),
            const SecondRow(
                imgPath1: 'assets/window.png',
                imgPath2: 'assets/cactus.png',
                avatarImg: 'assets/tomcruise.png'),
            const SizedBox(height: 10.0),
            const InfoRow(),
            const SizedBox(height: 15.0),
            const FirstRow(
                imgPath1: 'assets/cone.png',
                imgPath2: 'assets/letter.png',
                avatarImg: 'assets/chris.png',
                nameItem: 'ice Cream',
                nameUser: 'mohammd',
                time: '10:30PM'),
            const SizedBox(height: 10.0),
            const SecondRow(
                imgPath1: 'assets/window.png',
                imgPath2: 'assets/cactus.png',
                avatarImg: 'assets/tomcruise.png'),
            const SizedBox(height: 10.0),
            const InfoRow(),
            const SizedBox(height: 15.0),
            const FirstRow(
                imgPath1: 'assets/cone.png',
                imgPath2: 'assets/letter.png',
                avatarImg: 'assets/chris.png',
                nameItem: 'ice Cream',
                nameUser: 'mohammd',
                time: '05:20PM'),
            const SizedBox(height: 10.0),
            const SecondRow(
                imgPath1: 'assets/window.png',
                imgPath2: 'assets/cactus.png',
                avatarImg: 'assets/tomcruise.png'),
            const SizedBox(height: 10.0),
            const InfoRow(),
          ],
        ));
  }
}
