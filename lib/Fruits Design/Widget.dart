import 'package:flutter/material.dart';

import '../Constants/Colors.dart';
import '../Constants/My Icons.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({Key? key, required this.imgPath, required this.fruitName, required this.price, required this.isFav}) : super(key: key);
final String imgPath;
final String fruitName;
final String price;
final bool isFav;
  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
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
                          image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: widget.isFav
                          ?   Icon(MyIcons.Fav, color: Color_Const.red)
                          :   Icon(MyIcons.Favborder,
                          color: Color_Const.red)),
                )
              ],
            ),
            const SizedBox(height: 15.0),
            Text(
              widget.fruitName,
              style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '\$' + widget.price + ' each',
              style: const TextStyle(
                  fontFamily: 'Montserrat', fontSize: 14.0, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
