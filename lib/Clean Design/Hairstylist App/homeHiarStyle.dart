import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';
import 'package:test_app_nabeeh/Constants/Routes.dart'as route;
class HomeHairStyle extends StatefulWidget {
  const HomeHairStyle({Key? key}) : super(key: key);

  @override
  _HomeHairStyleState createState() => _HomeHairStyleState();
}

class _HomeHairStyleState extends State<HomeHairStyle> {
  var selectedDate = 18;
  var selectedBarber = 'Jonathan';
  var selectedTime = '12:30';
bool drop1  =false;
bool drop2  =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color_Const.white,
        title:   Text('BOOKING',
            style: TextStyle(
                fontFamily: 'FirSans', fontSize: 16.0, color: Color_Const.black)),
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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      getDate(18, 'Tue'),
                      const SizedBox(width: 25.0),
                      getDate(19, 'Wed'),
                      const SizedBox(width: 25.0),
                      getDate(20, 'Thu'),
                      const SizedBox(width: 25.0),
                      getDate(21, 'Fri'),
                      const SizedBox(width: 25.0),
                    ],
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
          Row(
            children: <Widget>[
              const SizedBox(width: 15.0),
              getService('Beards', 50),
              getService('Crew Cut', 15)
            ],
          ),
          const SizedBox(height: 15.0),
          Container(
              height: 175.0,
              child: ListView(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  getBarber('assets/style2.png', 'Anton'),
                  const SizedBox(width: 15.0),
                  getBarber('assets/style1.png', 'Jonathan'),
                  const SizedBox(width: 15.0),
                  getBarber('assets/style3.png', 'Jim'),
                  const SizedBox(width: 15.0),
                ],
              ),
          ),
          const SizedBox(height: 20.0),
          Container(
            height: 50.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                getTime('11.00'),
                const SizedBox(width: 25.0),
                getTime('12.30'),
                const SizedBox(width: 25.0),
                getTime('13.30'),
                const SizedBox(width: 25.0),
                getTime('15.00'),
                const SizedBox(width: 25.0)
              ],
            ),
          ),
          const SizedBox(height: 25.0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.black),
                child: const Center(
                  child: Text(
                    'BOOK',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontFamily: 'FirSans',
                        fontSize: 17.0,
                        color: Colors.white,
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

  Color switchTimeColor(time) {
    if (time == selectedTime) {
      return Colors.black.withOpacity(0.8);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchTimeContentColor(time) {
    if (time == selectedTime) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  selectTime(time) {
    setState(() {
      selectedTime = time;
    });
  }

  Widget getTime(time) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: switchTimeColor(time)),
      height: 50.0,
      width: 75.0,
      child: InkWell(
        onTap: () {
          selectTime(time);
        },
        child: Center(
          child: Text(
            time,
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: switchTimeContentColor(time)),
          ),
        ),
      ),
    );
  }

  Widget getBarber(String imgPath, String name) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
            ),
            InkWell(
              onTap: () {
                selectBarber(name);
              },
              child: Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: getSelectedBarber(name)),
              ),
            )
          ],
        ),
        const SizedBox(height: 7.0),
        Text(
          name,
          style: const TextStyle(fontFamily: 'FirSans', fontSize: 15.0),
        )
      ],
    );
  }

  selectBarber(name) {
    setState(() {
      selectedBarber = name;
    });
  }

  Color getSelectedBarber(name) {
    print(selectedBarber);
    print(selectedDate);
    print(selectedTime);
    if (name == selectedBarber) {
      return Colors.green.withOpacity(0.3);
    } else {
      return Colors.transparent;
    }
  }

  Widget getService(String name, int price) {
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            name,
            style:   TextStyle(
                fontFamily: 'Nunito', fontSize: 17.0, color: Color_Const.black),
          ),
          const SizedBox(width: 5.0),
          drop2 ? Text(
            '\$' + price.toString(),
            style: TextStyle(
                fontFamily: 'Nunito', fontSize: 17.0, color: Color_Const.grey),
          ): Container(),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              drop2=!drop2;
            },
          )
        ],
      ),
    );
  }

  Widget getDate(int date, String day) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), color: switchColor(date)),
      width: 60.0,
      height: 60.0,
      child: InkWell(
        onTap: () {
          selectDate(date);
        },
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 7.0),
              Text(
                date.toString(),
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: switchContentColor(date)),
              ),
              Text(
                day,
                style: TextStyle(
                    fontFamily: 'FiraSans',
                    fontSize: 15.0,
                    color: switchContentColor(date)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color switchColor(date) {
    if (date == selectedDate) {
      return Colors.black.withOpacity(0.8);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchContentColor(date) {
    if (date == selectedDate) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  selectDate(date) {
    setState(() {
      selectedDate = date;
    });
  }
}
