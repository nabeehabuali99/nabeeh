import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';

class MenuDesign extends StatefulWidget {
  const MenuDesign({Key? key, required this.title, required this.imgPath, required this.type, required this.rating, required this.views, required this.likes}) : super(key: key);
final String title;
final String imgPath;
final String type;
final int  rating;
final double views;
final double likes;
  @override
  State<MenuDesign> createState() => _MenuDesignState();
}

class _MenuDesignState extends State<MenuDesign> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(7.0),
        elevation: 4.0,
        child: Container(
          height: 125.0,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Color_Const.white),
          child: Row(
            children: <Widget>[
              const SizedBox(width: 10.0),
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.imgPath), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7.0)),
              ),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 15.0),
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 7.0),
                  Text(
                    widget.type,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Color_Const.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 7.0),
                  Row(
                    children: <Widget>[
                      getStar(widget.rating, 1),
                      getStar(widget.rating, 2),
                      getStar(widget.rating, 3),
                      getStar(widget.rating, 4),
                      getStar(widget.rating, 5)
                    ],
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.remove_red_eye,
                          color: Colors.grey.withOpacity(0.4)),
                      const SizedBox(width: 3.0),
                      Text(widget.views.toString()),
                      const SizedBox(width: 10.0),
                      Icon(
                        Icons.favorite,
                        color: Color_Const.red,
                      ),
                      const SizedBox(width: 3.0),
                      Text(widget.likes.toString())
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getStar(rating, index) {
    if (rating >= index) {
      return Icon(Icons.star, color: Color_Const.yellow);
    } else {
      return Icon(Icons.star, color: Color_Const.grey.withOpacity(0.5));
    }
  }


}
