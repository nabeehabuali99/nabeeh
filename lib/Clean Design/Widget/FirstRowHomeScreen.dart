import 'package:flutter/material.dart';

class FirstRow extends StatefulWidget {
  const FirstRow(
      {Key? key,
      required this.imgPath1,
      required this.imgPath2,
      required this.avatarImg,
      required this.nameItem,
      required this.nameUser,
      required this.time})
      : super(key: key);
  final String imgPath1;
  final String imgPath2;
  final String avatarImg;
  final String nameItem;
  final String nameUser;
  final String time;

  @override
  State<FirstRow> createState() => _FirstRowState();
}

class _FirstRowState extends State<FirstRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250.0,
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(children: [
          Container(
              height: 250.0,
              width: (MediaQuery.of(context).size.width - 30.0) / 2,
              child: Column(children: [
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage(widget.imgPath1),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(height: 15.0),
                Text(widget.nameItem,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontFamily: 'Montserrat')),
                const SizedBox(height: 15.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                  image: AssetImage(widget.avatarImg)))),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.nameUser,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontFamily: 'Montserrat', color: Colors.orange),
                          ),
                          Text(
                            widget.time,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontFamily: 'Montserrat', color: Colors.grey),
                          ),
                        ],
                      )
                    ])
              ])),
          const SizedBox(width: 10.0),
          Container(
              height: 250.0,
              width: (MediaQuery.of(context).size.width - 30.0) / 2,
              child: Container(
                  height: 250.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage(widget.imgPath2),
                          fit: BoxFit.cover))))
        ]));
  }
}
