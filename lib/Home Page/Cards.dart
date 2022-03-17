import 'package:flutter/material.dart';


class CardsUI extends StatefulWidget {
  @override
  _CardsUIState createState() =>   _CardsUIState();
}

class _CardsUIState extends State<CardsUI>
    with SingleTickerProviderStateMixin {
  late Animation cardAnimation, delayedCardAnimation, fabButtonanim, infoAnimation;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds:2), vsync: this);

    cardAnimation = Tween(begin: 0.0, end: -0.025).animate(
        CurvedAnimation(curve: Curves.fastOutSlowIn, parent: controller));

    delayedCardAnimation = Tween(begin: 0.0, end: -0.05).animate(
        CurvedAnimation(
            curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
            parent: controller));

    fabButtonanim = Tween(begin: 1.0, end: -0.0008).animate(CurvedAnimation(
        curve: const Interval(0.8, 1.0, curve: Curves.fastOutSlowIn),
        parent: controller));

    infoAnimation = Tween(begin: 0.0, end: 0.025).animate(CurvedAnimation(
        curve: const Interval(0.7, 1.0, curve: Curves.fastOutSlowIn),
        parent: controller));
  }

  @override
  Widget build(BuildContext context) {
    final devHeight = MediaQuery.of(context).size.height;
    controller.forward();
    return AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget? child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.black,
                onPressed: () {},
              ),
              title:   const Text('Near by',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              actions: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: FlutterLogo (size: 40.0),
                )
              ],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                    child: Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Positioned(
                          left: 20.0,
                          child: Container(
                            transform: Matrix4.translationValues(0.0, delayedCardAnimation.value * devHeight, 0.0),
                            width: 260.0,
                            height: 400.0,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                        Positioned(

                          left: 10.0,
                          child: Container(
                            transform: Matrix4.translationValues(0.0, cardAnimation.value * devHeight, 0.0),
                            width: 280.0,
                            height: 400.0,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                        Container(
                          width: 300.0,
                          height: 400.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                  image: AssetImage('assets/Girl Img.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          top: 320.0,
                          left: 15.0,
                          child: Container(
                            transform: Matrix4.translationValues(0.0, infoAnimation.value * devHeight, 0.0),
                            width: 270.0,
                            height: 90.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 1.0,
                                      color: Colors.black12,
                                      spreadRadius: 2.0)
                                ]),
                            child: Container(
                              padding: const EdgeInsets.all(7.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      const Text(
                                        'Kayla',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 20.0),
                                      ),
                                      const SizedBox(width: 4.0),
                                      Image.asset(
                                        'assets/simbolo.png',
                                        height: 20.0,
                                        width: 20.0,
                                      ),
                                      SizedBox(width: 110.0),
                                      const Text(
                                        '5.8km',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 20.0,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 9.0),
                                  Row(
                                    children: const <Widget>[
                                      Text(
                                        'Fate is wonderful.',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 15.0,
                                            color: Colors.grey),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                Container(
                  transform: Matrix4.translationValues(0.0, fabButtonanim.value * devHeight, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FloatingActionButton(
                        elevation: 0.0,
                        onPressed: () {},
                        child: const Icon(Icons.close, color: Colors.black),
                        backgroundColor: Colors.white,
                      ),
                      Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35.0),
                          border: Border.all(
                              color: Colors.transparent,
                              style: BorderStyle.solid,
                              width: 2.0),
                        ),
                        child: Container(
                          child: Center(
                            child: IconButton(
                              icon: Image.asset('assets/Chat.png'),
                              color: Colors.lightBlueAccent[300],
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        elevation: 0.0,
                        onPressed: () {},
                        child: const Icon(Icons.favorite, color: Colors.pink),
                        backgroundColor: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}