import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Routes.dart' as route;


class CartApp extends StatefulWidget {
  const CartApp({Key? key}) : super(key: key);

  @override
  _CartAppState createState() => _CartAppState();
}

class _CartAppState extends State<CartApp> {
  List picked = [false, false];

  int totalAmount = 0;
  pickToggle(index) {
    setState(() {
      picked[index] = !picked[index];
      getTotalAmount();
    });
  }

  getTotalAmount() {
    var count = 0;
    for (int i = 0; i < picked.length; i++) {
      if (picked[i]) {
        count = count + 1;
      }
      if (i == picked.length - 1) {
        setState(() {
          totalAmount = 248 * count;
        });
      }
    }}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(shrinkWrap: true, children: <Widget>[
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Stack(children: [
            Stack(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
              ),
              Container(
                height: 250.0,
                width: double.infinity,
                color: const Color(0xFFFDD148),
              ),
              Positioned(
                bottom: 450.0,
                right: 100.0,
                child: Container(
                  height: 400.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200.0),
                    color: const Color(0xFFFEE16D),
                  ),
                ),
              ),
              Positioned(
                bottom: 500.0,
                left: 150.0,
                child: Container(
                    height: 300.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150.0),
                        color: const Color(0xFFFEE16D).withOpacity(0.5))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: IconButton(
                    alignment: Alignment.topLeft,
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ),
              const Positioned(
                  top: 75.0,
                  left: 15.0,
                  child: Text(
                    'Shopping Cart',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                top: 150.0,
                child: Column(
                  children: <Widget>[
                    itemCard('Finn Navian-Sofa', 'gray', '248',
                        'assets/otto5.png', true, 0),
                    itemCard('Finn Navian-Sofa', 'gray', '248',
                        'assets/anotherchair.png', true, 1),
                    itemCard('Finn Navian-Sofa', 'gray', '248',
                        'assets/chair.png', false, 2)
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 600.0, bottom: 15.0),
                  child: Container(
                      height: 50.0,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text('Total: \$' + totalAmount.toString()),
                          const SizedBox(width: 10.0),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RaisedButton(
                              onPressed: () {},
                              elevation: 0.5,
                              color: Colors.red,
                              child: const Center(
                                child: Text(
                                  'Pay Now',
                                ),
                              ),
                              textColor: Colors.white,
                            ),
                          )
                        ],
                      )))
            ])
          ])
        ])
      ]),
      bottomNavigationBar: Material(
          elevation: 7.0,
          color: Colors.white,
          child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BottomNavigator((){Navigator.of(context).pushNamed(route.homeScreenApp);},Colors.grey,Icons.shopping_basket  ),
                      BottomNavigator((){Navigator.of(context).pushNamed(route.profileFurniture);},Colors.grey,Icons.account_box ),
                      BottomNavigator((){Navigator.of(context).pushNamed(route.cartFurniture);},Colors.yellow,Icons.shopping_cart ),
                      BottomNavigator((){Navigator.of(context).pushNamed(route.profileFurniture);},Colors.grey,Icons.account_box ),
                    ]),
              ))),
    );
  }

  Widget itemCard(itemName, color, price, imgPath, available, i) {
    return InkWell(
      onTap: () {
        if (available) {
          pickToggle(i);
        }
      },
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
              borderRadius: BorderRadius.circular(10.0),
              elevation: 3.0,
              child: Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 10.0),
                  width: MediaQuery.of(context).size.width - 20.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              height: 25.0,
                              width: 25.0,
                              decoration: BoxDecoration(
                                color: available
                                    ? Colors.grey.withOpacity(0.4)
                                    : Colors.red.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(12.5),
                              ),
                              child: Center(
                                  child: available
                                      ? Container(
                                    height: 12.0,
                                    width: 12.0,
                                    decoration: BoxDecoration(
                                        color: picked[i]
                                            ? Colors.yellow
                                            : Colors.grey
                                            .withOpacity(0.4),
                                        borderRadius:
                                        BorderRadius.circular(6.0)),
                                  )
                                      : Container()))
                        ],
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        height: 150.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain)),
                      ),
                      const SizedBox(width: 4.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                itemName,
                                style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                              const SizedBox(width: 7.0),
                              available
                                  ? picked[i]
                                  ? const Text(
                                'x1',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    color: Colors.grey),
                              )
                                  : Container()
                                  : Container()
                            ],
                          ),
                          const SizedBox(height: 7.0),
                          available
                              ? Text(
                            'Color: ' + color,
                            style: const TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.grey),
                          )
                              : OutlineButton(
                            onPressed: () {},
                            borderSide: const BorderSide(
                                color: Colors.red,
                                width: 1.0,
                                style: BorderStyle.solid),
                               child: const Center(
                                 child: Text('Find Similar',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0,
                                      color: Colors.red)),
                            ),
                          ),
                          const SizedBox(height: 7.0),
                          available
                              ? Text(
                            '\$' + price,
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Color(0xFFFDD34A)),
                          )
                              : Container(),
                        ],
                      )
                    ],
                  )))),
    );
  }

  Widget BottomNavigator(Function() onTap,Color iconColor,IconData icon ){
    return InkWell(
      onTap:  onTap,
      child: Container(
        height: 50.0,
        width: 50.0,
        color: Colors.white,
        child:   Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }

}

