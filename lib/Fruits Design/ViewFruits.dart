import 'package:flutter/material.dart';
import 'package:test_app_nabeeh/Constants/Colors.dart';
import 'package:test_app_nabeeh/Constants/My%20Icons.dart';

import 'Widget.dart';

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
              children: const <Widget>[
                ItemCard(imgPath:'assets/picone.png',fruitName :'orange', price:'0.75',isFav: false),
                ItemCard(imgPath:'assets/pictwo.png',fruitName :'kiwi', price:'0.25', isFav:true),
                ItemCard(imgPath:'assets/picthree.png', fruitName:'banana', price:'0.25',isFav: true),
                SizedBox(height: 15.0)
              ],
            ),
            Column(
              children: const <Widget>[
                SizedBox(height: 25.0),
                ItemCard(imgPath:'assets/picfour.png',fruitName :'Pineapple', price:'0.25', isFav:true),
                ItemCard(imgPath:'assets/picfive.png',fruitName :'Lemon', price:'0.25', isFav:true),
                ItemCard(imgPath:'assets/picone.png', fruitName:'banana', price:'0.25', isFav:false),
              ],
            )
          ],
        )
      ],
    );
  }

}
