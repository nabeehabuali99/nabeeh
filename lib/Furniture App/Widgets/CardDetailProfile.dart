import 'package:flutter/material.dart';

class CardDetail extends StatefulWidget {

  final String title;
  final String imgPath;
  final int valueCount;
  const CardDetail({Key? key, required this.title, required this.imgPath, required this.valueCount}) : super(key: key);

  @override
  State<CardDetail> createState() => _CardDetailState();
}

class _CardDetailState extends State<CardDetail> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(7.0),
      child: Container(
        height: 125.0,
        width: (MediaQuery.of(context).size.width / 2) - 20.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Image.asset(
                widget.imgPath,
                fit: BoxFit.cover,
                height: 50.0,
                width: 50.0,
              ),
            ),
            const SizedBox(height: 2.0),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(widget.title,
                  style: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 15.0,
                    color: Colors.black,
                  )),
            ),
            const SizedBox(height: 3.0),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(widget.valueCount.toString(),
                  style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
