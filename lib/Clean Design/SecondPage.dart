import 'package:flutter/material.dart';

import '../Constants/Size_Config.dart';
import 'package:test_app_nabeeh/Constants/Routes.dart' as route;

class SecondPage extends StatefulWidget {
  final heroTag;
  const SecondPage({this.heroTag});
  @override
  _SecondPageState createState() => _SecondPageState(heroTag: heroTag);
}

class _SecondPageState extends State<SecondPage> {
  final heroTag;

  _SecondPageState({this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: <Widget>[
          Hero(
            tag: heroTag,
            child: Container(
              height: SizeConfig.defaultSize,
              width: SizeConfig.defaultSize,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(heroTag), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            bottom: 15.0,
            left: 15.0,
            right: 15.0,
            child: Material(
              borderRadius: BorderRadius.circular(10.0),
              elevation: 3.0,
              child: Container(
                height: SizeConfig.defaultSize,
                width: SizeConfig.defaultSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 115.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                    color: Colors.grey,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                image: const DecorationImage(
                                    image: AssetImage('assets/dress.png'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'LAMINATED',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5.0),
                            const Text(
                              'Louis vuitton',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14.0,
                                  color: Colors.grey),
                            ),
                            const SizedBox(height: 10.0),
                            Container(
                              height: SizeConfig.defaultSize,
                              width: MediaQuery.of(context).size.width - 160.0,
                              child: const Text(
                                'One button V-neck sling long-sleeved waist female stitching dress',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 50.0,
                      height: 1.0,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 5.0),
                        child: Container(
                            width: double.infinity,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  const Text(
                                    '\$6500',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    child: const Center(
                                      child: Icon(Icons.arrow_forward_ios,
                                          color: Colors.white, size: 15.0),
                                    ),
                                    backgroundColor: const Color(0xFF916144),
                                    onPressed: () {
                                      Navigator.pushNamed(context, route.fashionDesign);
                                    },
                                    elevation: 0.0,
                                    mini: true,
                                  )
                                ])))
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 50.0,
            top: MediaQuery.of(context).size.height / 2,
            child: InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(route.fashionDesign);
              },
              child: Container(
                height: 35.0,
                width: 125.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.black.withOpacity(0.4)),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                      Text(
                      'LAMINATED',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.white, size: 17.0)
                  ],
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
