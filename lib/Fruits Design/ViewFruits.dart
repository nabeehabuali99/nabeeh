import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';

class FruitsPage extends StatefulWidget {
  @override
  _FruitsPageState createState() => _FruitsPageState();
}
// List<Map<String,dynamic>> itemsFruit=[
//   {'imgPath': 'assets/picone.png','fruitName':'orange','price':'0.75' ,'isFav':false },
// {'imgPath': 'assets/pictwo.png','fruitName':'kiwi','price': '0.25','isFav':true },
//   {'imgPath':'assets/picthree.png','fruitName':'banana','price': '0.25','isFav':true },
//   {'imgPath':'assets/picfour.png','fruitName':'Pineapple','price': '0.25','isFav':false },
//   {'imgPath':'assets/picfive.png','fruitName': 'Lemon','price': '0.25','isFav':true },
//   {'imgPath':'assets/picone.png','fruitName': 'banana','price': '0.25','isFav':false }
// ];
class _FruitsPageState extends State<FruitsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                getFoodCard('assets/picone.png', 'orange', '0.75', false),
                getFoodCard('assets/pictwo.png', 'kiwi', '0.25', true),
                getFoodCard('assets/picthree.png', 'banana', '0.25', true),
                const SizedBox(height: 15.0)
              ],
            ),
            Column(
              children: <Widget>[
                const SizedBox(height: 25.0),
                getFoodCard('assets/picfour.png', 'Pineapple', '0.25', true),
                getFoodCard('assets/picfive.png', 'Lemon', '0.25', true),
                getFoodCard('assets/picone.png', 'banana', '0.25', false),
              ],
            )
          ],
        )
      ],
    );
  }
  bool isFav = false;
  Widget getFoodCard(
      String imgPath, String fruitName, String price, bool isFav) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
      child: Container(
        height: 200.0,
        width: (MediaQuery.of(context).size.width / 2) - 20.0,
        decoration: BoxDecoration(
            color: Color_Const.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 2.0,
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2.0)
            ]),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage(imgPath), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: isFav
                          ?   Icon(MyIcons.Fav, color: Color_Const.red)
                          :   Icon(MyIcons.Favborder,
                              color: Color_Const.red)),
                )
              ],
            ),
            const SizedBox(height: 15.0),
            Text(
              fruitName,
              style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '\$' + price + ' each',
              style: const TextStyle(
                  fontFamily: 'Montserrat', fontSize: 14.0, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
