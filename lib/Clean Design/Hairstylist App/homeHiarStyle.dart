import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';
import 'package:test_app_nabeeh/Constants/Routes.dart' as route;

import '../../Constants/Space Widgets.dart';
import '../Widget/GetBarberHairStyle.dart';
import '../Widget/GetDateHairStyle.dart';
import '../Widget/GetServiceHairStyle.dart';
import '../Widget/GrtTimeHairStyle.dart';

class HomeHairStyle extends StatefulWidget {
  const HomeHairStyle({Key? key}) : super(key: key);

  @override
  _HomeHairStyleState createState() => _HomeHairStyleState();
}

List<Map<String, dynamic>> itemsDate = [
  {'date': 18, 'day': 'Tue'},
  {'date': 19, 'day': 'Wed'},
  {'date': 20, 'day': 'Thu'},
  {'date': 21, 'day': 'Fri'}
];
List<Map<String, dynamic>> itemsBarber = [
  {'imgPath': 'assets/style2.png', 'name': 'Anton'},
  {'imgPath': 'assets/style1.png', 'name': 'Jonathan'},
  {'imgPath': 'assets/style3.png', 'name': 'Jim'},
];
List<Map<String, dynamic>> itemsService = [
  {'name': 'Beards', 'price': 50},
  {'name': 'Crew Cut', 'price': 15},
];
List times = ['11.00', '12.30', '13.30', '15.00'];

class _HomeHairStyleState extends State<HomeHairStyle> {
  var selectedDate = 18;
  var selectedBarber = 'Jonathan';
  var selectedTime = '12:30';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color_Const.white,
        title: Text('BOOKING',
            style: TextStyle(
                fontFamily: 'FirSans',
                fontSize: 16.0,
                color: Color_Const.black)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(route.chefDesign);
          },
          icon: const Icon(MyIcons.arrowback),
          color: Color_Const.black,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 100.0,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 3.0,
                      color: Color_Const.black.withOpacity(0.2),
                      spreadRadius: 4.0)
                ], color: Color_Const.white),
              ),
              Positioned(
                top: 20.0,
                left: 15.0,
                right: 15.0,
                child: Container(
                  height: 60.0,
                  child: ListView.builder(
                    itemCount: itemsDate.length,
                    itemBuilder: ((context, index) {
                      return GetDate(itemsDate,
                          day: itemsDate[index]['day'],
                          date: itemsDate[index]['date']);
                    }),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 35.0),
          Center(
            child: Text(
              'Hagorapt',
              style: TextStyle(
                  letterSpacing: 2.0,
                  fontFamily: 'Nunito',
                  fontSize: 30.0,
                  color: Color_Const.black.withOpacity(0.6),
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemsService.length,
              itemBuilder: ((context, index) {
                return Row(
                  children: [
                    GetService(
                        name: itemsService[index]['name'],
                        price: itemsService[index]['price']),
                  ],
                );
              }),
            ),
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 175.0,
            child: ListView.builder(
                itemCount: itemsBarber.length,
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return GetBarBer(
                      imgPath: itemsBarber[index]['imgPath'],
                      name: itemsBarber[index]['name']);
                })),
          ),
          const SizedBox(height: 20.0),
          Container(
            height: 50.0,
            child: ListView.builder(
              itemCount: times.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return GetTime(time: times[index]);
              }),
            ),
          ),
          const SizedBox(height: 25.0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(route.homeGourmet);
              },
              child: Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color_Const.black),
                child: Center(
                  child: Text(
                    'BOOK',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontFamily: 'FirSans',
                        fontSize: 17.0,
                        color: Color_Const.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
