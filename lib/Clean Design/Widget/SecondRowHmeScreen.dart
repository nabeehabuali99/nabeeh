import 'package:flutter/material.dart';

class SecondRow extends StatefulWidget {
  final String  imgPath1;
  final String  imgPath2;
  final String  avatarImg;
  const SecondRow({Key? key, required this.imgPath1, required this.imgPath2, required this.avatarImg}) : super(key: key);

  @override
  State<SecondRow> createState() => _SecondRowState();
}

class _SecondRowState extends State<SecondRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath2), fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(width: 10.0),
          Container(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Column(
              children: <Widget>[
                const Text(
                  'I like the way to place items to show more...',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                const  SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image: AssetImage(widget.avatarImg), fit: BoxFit.cover)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          'Mona Hall',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.orange),
                        ),
                        Text(
                          '10:51PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 42.0),
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage(widget.imgPath1), fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
