import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';
import '../../Constants/My Icons.dart';

class GetFoodItem extends StatefulWidget {
  const GetFoodItem(
      {Key? key,
      required this.dishName,
      required this.imgPath,
      required this.description,
      required this.distance,
      required this.calInfo,
      required this.rating,
      required this.cookingTime})
      : super(key: key);
  final String dishName;
  final String imgPath;
  final String description;
  final int distance;
  final int calInfo;
  final int rating;
  final int cookingTime;

  @override
  State<GetFoodItem> createState() => _GetFoodItemState();
}

class _GetFoodItemState extends State<GetFoodItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15.0, bottom: 15.0, top: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width - 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          widget.dishName,
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 5.0),
                          height: 40.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0)),
                            color: Color_Const.lightred,
                          ),
                          child:   Center(
                            child: Icon(
                              MyIcons.love,
                              color: Color_Const.white,
                            ),
                          ),
                        )
                      ],
                    )),
                Row(
                  children: <Widget>[
                    getRatedStar(widget.rating, 1),
                    getRatedStar(widget.rating, 2),
                    getRatedStar(widget.rating, 3),
                    getRatedStar(widget.rating, 4),
                    getRatedStar(widget.rating, 5),
                    const SizedBox(width: 7.0),
                    Text(
                      widget.rating.toString(),
                      style: TextStyle(
                          color: Color_Const.yellowlight800, fontSize: 17.0),
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                Text(
                  'About dishes',
                  style:
                      TextStyle(fontSize: 12.0, color: Color_Const.lightGreen),
                ),
                const SizedBox(height: 5.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 130.0,
                  child: Text(
                    widget.description,
                    style: TextStyle(fontSize: 14.0, color: Color_Const.grey),
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Icon(MyIcons.fastfood, color: Color_Const.grey),
                    Text(
                      widget.calInfo.toString() + 'kcal',
                      style: TextStyle(color: Color_Const.grey),
                    ),
                    const SizedBox(width: 7.0),
                    Icon(MyIcons.Location, color: Color_Const.grey),
                    Text(
                      widget.distance.toString() + 'km',
                      style: TextStyle(
                        color: Color_Const.grey,
                      ),
                    ),
                    const SizedBox(width: 7.0),
                    Icon(MyIcons.timers, color: Color_Const.grey),
                    Text(
                      widget.cookingTime.toString() + 'mins',
                      style: TextStyle(
                        color: Color_Const.grey,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }

  getRatedStar(int rating, int index) {
    if (index <= rating) {
      return Icon(MyIcons.star, color: Color_Const.yellowlight600);
    } else {
      return Icon(MyIcons.star, color: Color_Const.grey);
    }
  }
}
