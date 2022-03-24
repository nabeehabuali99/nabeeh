import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Furniture%20App/Widgets/itemCard.dart';
import 'package:test_app_nabeeh/Constants/Routes.dart' as route;

import '../Home Page/Carousel Page.dart';

class ShowItemInfo extends StatefulWidget {
  const ShowItemInfo({Key? key}) : super(key: key);

  @override
  _ShowItemInfoState createState() => _ShowItemInfoState();
}

bool isFavorite1 = true;

class _ShowItemInfoState extends State<ShowItemInfo>with SingleTickerProviderStateMixin {
  int photoIndex = 0;
  late AnimationController animationController;
  late Animation carouselAnimation ;
  List<String> photos = [
    'assets/ottomn.png',
    'assets/otto2.png',
    'assets/otto3.png',
    'assets/otto4.png'
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(duration: const Duration(seconds:10),vsync: this );
    carouselAnimation =IntTween(begin: 0,end: photos.length -1).animate(animationController)..addListener(() {
      setState(() {
        photoIndex = carouselAnimation.value;
      });
    });
    animationController.repeat();
  }
  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 275.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(photos[photoIndex]),
                            fit: BoxFit.cover)),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 275.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                    ),
                    onTap: _nextImage,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 275.0,
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.transparent,
                    ),
                    onTap: _previousImage,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: const Icon(Icons.arrow_back),
                            color: Colors.black,
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                        Material(
                            elevation: 4.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                      isFavorite1 = !isFavorite1;
                                  });
                                },
                                child: isFavorite1
                                    ? const Icon(Icons.favorite_border)
                                    : const Icon(Icons.favorite,
                                        color: Colors.red),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Positioned(
                      top: 240.0,
                      left: MediaQuery.of(context).size.width / 2 - 30.0,
                      child: Row(
                        children: <Widget>[
                          SelectedPhoto(
                            numberOfDots: photos.length,
                            photoIndex: photoIndex,
                          )
                        ],
                      ))
                ],
              ),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Alcide Number: 2323X',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      color: Colors.grey),
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Finn Navian-Sofa',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: (MediaQuery.of(context).size.width / 4 +
                                MediaQuery.of(context).size.width / 2) -
                            10.0,
                        child: Text(
                          'Scandinavian small size double sofa / imported full leather /Dale Italia oil wax leather black',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            color: Colors.grey.withOpacity(0.8),
                          ),
                        ),
                      ),
                      const Text(
                        '\$ 248',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'COLOR',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: const Color(0xff5A5551)),
                      ),
                      const SizedBox(width: 15.0),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: const Color(0xffC3BCB5)),
                      ),
                      const SizedBox(width: 15.0),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: const Color(0xFFEFEFEF)),
                      )
                    ],
                  )),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'MATERIAL',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                          height: 50.0,
                          width: 50.0,
                          child: const Icon(Icons.time_to_leave,
                              color: Colors.grey, size: 30.0)),
                      const Text(
                        'x30%',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        child: const Icon(
                          Icons.timer,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                      const Text(
                        'x60%',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        child: const Icon(
                          Icons.monetization_on,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                      const Text(
                        'x10%',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
      bottomNavigationBar: Material(
          elevation: 7.0,
          color: Colors.white,
          child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(route.food);
                      },
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        color: Colors.white,
                        child: const Icon(
                          Icons.shopping_cart,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(route.profileFurniture);
                      },
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        color: Colors.white,
                        child: const Icon(
                          Icons.account_box,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(route.toCart);
                      },
                      child: Container(
                          color: const Color(0xFFFEDD59),
                          width: MediaQuery.of(context).size.width - 130.0,
                          child: const Center(
                              child: Text(
                            'Add to Cart',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))),
                    )
                  ]))),
    );
  }
}
